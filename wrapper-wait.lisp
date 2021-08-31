(in-package #:cffi-wait)

(defwrapper ("WEXITSTATUS" wexitstatus) :int (status :int))
(defwrapper ("WIFCONTINUED" wifcontinued) :int (status :int))
(defwrapper ("WIFSIGNALED" wifsignaled) :int (status :int))
(defwrapper ("WIFSTOPPED" wifstopped) :int (status :int))
(defwrapper ("WSTOPSIG" wstopsig) :int (status :int))
(defwrapper ("WTERMSIG" wtermsig) :int (status :int))
