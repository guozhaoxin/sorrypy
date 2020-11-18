FROM python:3.7 
MAINTAINER 1345616978@qq.com
RUN mkdir /home/code
ADD ../sorrypy /home/code/sorrypy
ADD sources.list /etc/apt/
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 3B4FE6ACC0B21F32 
RUN pip3 install -r /home/code/sorrypy/req.txt  -i https://pypi.tuna.tsinghua.edu.cn/simple && apt update && apt install ffmpeg -y 
EXPOSE 8080 8080
CMD ["python3","/home/code/sorrypy/app.py"]
