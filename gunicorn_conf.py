import multiprocessing

bind = "0.0.0.0:8000"
workers = multiprocessing.cpu_count() * 2 + 1
worker_class = 'meinheld.gmeinheld.MeinheldWorker'
user = 'root'
loglevel = 'debug'
# accesslog = '/var/log/gunicorn_access.log'
# errorlog = '/var/log/gunicorn_error.log'
