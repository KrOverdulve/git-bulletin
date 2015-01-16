#!/usr/bin/env ruby
KEY = 'Bulletin'

def createBulletin(commit, bulletin)
  printf "\e[0;32mCommit: #{commit}\n"
  printf "\e[0;32mBulletin: \e[0m#{bulletin}"
  printf '\n'
end

def processCommitMessage(commit, commitmessage)
  multilineBulletin = nil

  commitmessage.split("\n").each do |line|
    if multilineBulletin != nil
      # Continue reading until empty line reached
      if line.strip == ""
        # End reached
        createBulletin commit, multilineBulletin
        multilineBulletin = nil
      else
        # Continue reading multiline
        multilineBulletin += line + "\n"
      end
    else
      # Check for single and multiline bulletin
      if line == KEY
        # Multiline bulletin starts
        multilineBulletin = ""
      elsif line.index("#{KEY}:")
        # Single line bulletin
        singleLineBulletinIndex = line.index("#{KEY}:")
        singlelineBulletin = line[(singleLineBulletinIndex + "#{KEY}:".length)..-1] + '\n'
        createBulletin commit, singlelineBulletin
      end
    end
  end

  createBulletin commit, multilineBulletin if multilineBulletin != nil
end

processCommitMessage ARGV[0], ARGV[1]
