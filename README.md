README
======

## Installation

Copy paste these files into .git/hooks/.

## How to use

A hook script that is able to interpret important messages, notifications
and breaking changes as meta data in commit messages. Either a developer
can add the meta data in a single line comment using 'Bulletin: <description>.'
which is terminated by the end of the line.

  commit aaaa20d49e789642bcd00155c42583fedd83445d
  Author: Kristof Overdulve <kristof@artict.be>
  Date:   Fri Jan 16 08:09:30 2015 +0100

      Added file. Bulletin: remember to change the filename

Or as a multi line comment where 'Bulletin' is put on a single line and the
bulletin continues until a blank line is found.

  commit bee8d2a0c70ab6b08e9dc5357119d500cf5a1375
  Author: Kristof Overdulve <kristof@artict.be>
  Date:   Fri Jan 16 08:05:41 2015 +0100

      Added file

      Bulletin
      Multi
      Line
      Comment
      Terminated when empty line encountered

      Not included in bulletin anymore
