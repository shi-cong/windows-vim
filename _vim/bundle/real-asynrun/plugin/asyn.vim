function Run()

if &filetype == 'python'
python3 << EOF
import vim, threading, os

def run():
	filename = vim.current.window.buffer.name
	cmd = "c:\Windows\System32\cmd.exe /c title Bug & color 27 & python %s & PAUSE" % filename
	t = threading.Thread(target=os.system, args=(cmd,))
	t.start()
run()
EOF
endif

endfunction
