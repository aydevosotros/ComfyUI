FROM python:3.10

RUN mkdir -p /opt/comfy_ui
COPY . /opt/comfy_ui/.

RUN pip install torch==1.13.1 torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu117 xformers

RUN pip install -r requirements.txt

CMD python main.py
