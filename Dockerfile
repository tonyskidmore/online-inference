FROM jupyter/scipy-notebook

RUN mkdir my-model
ENV MODEL_DIR=/home/jovyan/my-model
ENV MODEL_FILE_LDA=clf_lda.joblib
ENV MODEL_FILE_NN=clf_nn.joblib

COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt

COPY train.csv ./train.csv
COPY test.json ./test.json

COPY train.py ./train.py
COPY api.py ./api.py

RUN python3 train.py

# ssh
# ENV SSH_PASSWD "root:Docker!"
# RUN apt-get update \
#         && apt-get install -y --no-install-recommends dialog \
#         && apt-get update \
# 	&& apt-get install -y --no-install-recommends openssh-server \
# 	&& echo "$SSH_PASSWD" | chpasswd

# COPY sshd_config /etc/ssh/
# COPY init.sh /usr/local/bin/

# RUN chmod u+x /usr/local/bin/init.sh

EXPOSE 8888
#2222
CMD ["python3", "api.py"]
#ENTRYPOINT ["init.sh"]
