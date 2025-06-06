import os
import shutil

def delete_logs():
    logs_dir = "./logs"
    # Verifica se a pasta de logs existe
    if os.path.exists(logs_dir):
        # Remove a pasta e seu conteúdo
        shutil.rmtree(logs_dir)
        print(f"Pasta '{logs_dir}' deletada com sucesso.")
    else:
        print(f"Pasta '{logs_dir}' não existe. Nenhuma ação necessária.")