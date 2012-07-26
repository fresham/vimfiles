setlocal makeprg=/home/cody/Code/bin/cpplint.py\ %
setlocal errorformat=%f:%l:\ %m\ [%t],
                     \%-GDone\ processing\ %f,
                     \%-GTotal\ errors\ found:\ %*\\d
