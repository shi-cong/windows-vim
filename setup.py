import os 
import winreg

def pip_install():
    os.system('pip install jedi')

def get_vim80_path():
    return os.getcwd().encode().decode()

def set_directory_menu():
    key = winreg.OpenKey(
            winreg.HKEY_LOCAL_MACHINE, r'SOFTWARE\Classes\Directory\shell')
    dkey = winreg.CreateKey(key, 'Dear baby, I love you!')
    vp = get_vim80_path()
    winreg.SetValue(
            dkey, 'command',
            winreg.REG_SZ, 
            vp + '\\vim80\\gvim.exe %1')
    winreg.SetValueEx(
            dkey, 'icon',
            0,
            winreg.REG_SZ, 
            vp + '\\bitbug_favicon.ico')

def set_file_menu():
    key = winreg.OpenKey(
            winreg.HKEY_CLASSES_ROOT, r'\*\shell')
    dkey = winreg.CreateKey(key, 'Dear baby, I love you!')
    vp = get_vim80_path()

    winreg.SetValue(
            dkey, 'command',
            winreg.REG_SZ, 
            vp + '\\vim80\\gvim.exe %1')
    winreg.SetValueEx(
            dkey, 'icon',
            0,
            winreg.REG_SZ, 
            vp + '\\bitbug_favicon.ico')

if __name__ == '__main__':
    pip_install()
    set_directory_menu()
    set_file_menu()
