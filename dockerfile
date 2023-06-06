FROM squidfunk/mkdocs-material

RUN apk --no-cache add gcc g++ musl-dev
RUN pip install mkdocs-material
RUN pip install weasyprint
RUN pip install mkdocs-with-pdf
RUN pip install mkdocs-print-site-plugin
RUN pip install mkautodoc
RUN apk add pango  # レンダリングエンジン
RUN apk add font-ipa fontconfig && fc-cache -f  # 日本語フォント
