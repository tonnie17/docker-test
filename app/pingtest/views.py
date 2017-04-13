from django.shortcuts import render
from django.http import HttpResponse
import redis

rds = redis.StrictRedis(host='db', port=6379)

# Create your views here.
def ping(request):
    rds.incr('count', 1)
    cnt = rds.get('count')
    cnt = b'0' if cnt is None else cnt
    return HttpResponse(cnt.decode())
