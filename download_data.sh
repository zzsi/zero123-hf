Using https://huggingface.co/datasets/BAAI/Objaverse-MIX instead of the rendered views by zero-123 (1.5TB)

Downloading a chunk of data:

```
wget https://huggingface.co/datasets/BAAI/Objaverse-MIX/resolve/main/rendered_images/000-000.7z
wget https://huggingface.co/datasets/BAAI/Objaverse-MIX/resolve/main/rendered_images/000-001.7z
# There are 160 chunks

7z x 000-000.7z
7z x 000-001.7z
```
