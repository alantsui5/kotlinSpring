environment = 'macos'
def set(Env):
    global environment
    environment = Env
def install(app):
    import os
    if environment is 'macos':
        if os.system(f'which {app}') is 0:
            print(f'{app} installed')
        elif os.system('which brew') is 0:
                os.system(f'brew install {app}')
        else:
            print("brew is not installed")
    else:
        print(f'{environment} is currently not supported')
