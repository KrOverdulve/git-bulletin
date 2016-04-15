README
======

In large projects where many developers work together, it is often difficult
to keep track of the latest (breaking) changes, improvements or suggestions
that have been added since a certain commit. `git-bulletin` helps in spreading
the message. When other developers pull updates, change branches or commits in
general, they will see the bulletins to get them up to date.

## Installation

Copy paste these files into .git/hooks/. Make sure the `postcheckout` file is executable by doing e.g. `chmod +x .git/hooks/postcheckout`.


## How to use

This is a git hook that is able to interpret important messages, notifications
and breaking changes as meta data in commit messages. Either a developer
can add the meta data in a single line bulletin using 'Bulletin: <description>.'
which is terminated by the end of the line.

```
  commit aaaa20d49e789642bcd00155c42583fedd83445d
  Author: Kristof Overdulve <kristof@artict.be>
  Date:   Fri Jan 16 08:09:30 2015 +0100

      Added file. Bulletin: remember to change the filename
```

Or as a multi line bulletin where 'Bulletin' is put on a single line and the
bulletin continues until a blank line is found.

```
  commit bee8d2a0c70ab6b08e9dc5357119d500cf5a1375
  Author: Kristof Overdulve <kristof@artict.be>
  Date:   Fri Jan 16 08:05:41 2015 +0100

      Added file

      Bulletin
      Multi
      Line
      Bulletin
      Terminated when empty line encountered

      Not included in bulletin anymore
```
