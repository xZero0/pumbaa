'''
Created on Oct 11, 2013

@author: boatkrap
'''


def add_routes(config):
    config.add_route('index', '/')
    config.add_route('register', '/register')
    config.add_route('home', '/home')
    config.add_route('login', '/login')
    
    config.add_static_view('public', 'public', cache_max_age=3600)
    