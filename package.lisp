;;
;;  cffi-wait  -  Common Lisp wrapper for wait.h
;;
;;  Copyright 2017,2018 Thomas de Grivel <thoxdg@gmail.com>
;;  Copyright 2021 Matthew Kennedy <burnsidemk@gmail.com>
;;
;;  Permission to use, copy, modify, and distribute this software for any
;;  purpose with or without fee is hereby granted, provided that the above
;;  copyright notice and this permission notice appear in all copies.
;;
;;  THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
;;  WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
;;  MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
;;  ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
;;  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
;;  ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
;;  OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
;;

(in-package :common-lisp)

(defpackage :cffi-wait
  (:nicknames :wait)
  (:use
   :cffi
   :common-lisp
   :errno)
  (:export
   #:c-wait
   #:c-waitid
   #:c-waitpid
   #:siginfo-t
   #:pid-t
   #:id-t
   #:idtype-t
   
   ;; #:_exit
   ;; #:+f-ok+
   ;; #:+fd-setsize+
   ;; #:+nfdbits+
   ;; #:+r-ok+
   ;; #:+seek-set+
   ;; #:+seek-cur+
   ;; #:+seek-end+
   ;; #:+seek-data+
   ;; #:+seek-hole+
   ;; #:+stderr-fileno+
   ;; #:+stdin-fileno+
   ;; #:+stdout-fileno+
   ;; #:+w-ok+
   ;; #:+x-ok+
   ;; #:access
   ;; #:alarm
   ;; #:c-_exit
   ;; #:c-access
   ;; #:c-alarm
   ;; #:c-chdir
   ;; #:c-chown
   ;; #:c-close
   ;; #:c-dup
   ;; #:c-dup2
   ;; #:c-dup3
   ;; #:c-environ
   ;; #:c-euidaccess
   ;; #:c-execv
   ;; #:c-execve
   ;; #:c-execvp
   ;; #:c-execvpe
   ;; #:c-fchdir
   ;; #:c-fchown
   ;; #:c-fchownat
   ;; #:c-fork
   ;; #:c-getcwd
   ;; #:c-getegid
   ;; #:c-geteuid
   ;; #:c-getgid
   ;; #:c-getgroups
   ;; #:c-getpgid
   ;; #:c-getpgrp
   ;; #:c-getpid
   ;; #:c-getppid
   ;; #:c-getsid
   ;; #:c-getuid
   ;; #:c-isatty
   ;; #:c-lchown
   ;; #:c-link
   ;; #:c-lseek
   ;; #:c-nice
   ;; #:c-pathconf
   ;; #:c-pause
   ;; #:c-pipe
   ;; #:c-pipe2
   ;; #:c-pread
   ;; #:c-pwrite
   ;; #:c-read
   ;; #:c-readlink
   ;; #:c-rmdir
   ;; #:c-select
   ;; #:c-setegid
   ;; #:c-seteuid
   ;; #:c-setgid
   ;; #:c-setpgid
   ;; #:c-setpgrp
   ;; #:c-setsid
   ;; #:c-setuid
   ;; #:c-sleep
   ;; #:c-symlink
   ;; #:c-sysconf
   ;; #:c-ttyname
   ;; #:c-ualarm
   ;; #:c-unlink
   ;; #:c-usleep
   ;; #:c-vfork
   ;; #:c-write
   ;; #:chdir
   ;; #:chown
   ;; #:close
   ;; #:do-environ
   ;; #:dup
   ;; #:dup2
   ;; #:dup3
   ;; #:environ
   ;; #:euidaccess
   ;; #:execv
   ;; #:execve
   ;; #:execvp
   ;; #:execvpe
   ;; #:fchdir
   ;; #:fchown
   ;; #:fchownat
   ;; #:fd-clr
   ;; #:fd-elt
   ;; #:fd-isset
   ;; #:fd-mask
   ;; #:fd-set
   ;; #:fd-set-filter
   ;; #:fd-zero
   ;; #:fds-bits
   ;; #:file-descriptor
   ;; #:fork
   ;; #:getcwd
   ;; #:getegid
   ;; #:geteuid
   ;; #:getenv
   ;; #:getgid
   ;; #:getgroups
   ;; #:getpgid
   ;; #:getpid
   ;; #:getppid
   ;; #:getsid
   ;; #:getuid
   ;; #:gid-t
   ;; #:intptr-t
   ;; #:isatty
   ;; #:lchown
   ;; #:link
   ;; #:list-to-fd-set
   ;; #:lseek
   ;; #:nice
   ;; #:off-t
   ;; #:pathconf
   ;; #:pause
   ;; #:pid-t
   ;; #:pipe
   ;; #:pipe2
   ;; #:pread
   ;; #:pwrite
   ;; #:read
   ;; #:read-non-blocking
   ;; #:readlink
   ;; #:rmdir
   ;; #:seconds-to-timeval
   ;; #:select
   ;; #:setegid
   ;; #:seteuid
   ;; #:setgid
   ;; #:setpgid
   ;; #:setpgrp
   ;; #:setsid
   ;; #:setuid
   ;; #:size-t
   ;; #:sleep
   ;; #:socklen-t
   ;; #:ssize-t
   ;; #:symlink
   ;; #:sysconf
   ;; #:timeval
   ;; #:ttyname
   ;; #:tv-sec
   ;; #:tv-usec
   ;; #:ualarm
   ;; #:uid-t
   ;; #:unlink
   ;; #:useconds-t
   ;; #:usleep
   ;; #:vfork
   ;; #:with-pipe
   ;; #:with-selected
   ;; #:write
   ;; #:write-non-blocking
   ))
