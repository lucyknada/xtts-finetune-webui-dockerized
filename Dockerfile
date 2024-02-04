FROM pytorch/pytorch:2.1.0-cuda11.8-cudnn8-runtime
RUN pip install nvidia-cublas-cu11 nvidia-cudnn-cu11
ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/conda/lib/python3.10/site-packages/nvidia/cublas/lib:/opt/conda/lib/python3.10/site-packages/nvidia/cudnn/lib
RUN mkdir -p /workspace/xtts
WORKDIR /workspace/xtts
COPY ./xtts-finetune-webui/requirements.txt .
RUN pip install -r requirements.txt
