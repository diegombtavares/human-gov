# Human-Gov

## Repositório de códigos do projeto Human-Gov

Human-Gov é um sistema de gerenciamento de recursos humanos desenvolvido para fins educacionais. Este projeto foi criado como parte do The Cloud Bootcamp.

### Estrutura do Projeto

- `human-gov-application/`: Contém o código-fonte da aplicação web.
  - `src/`: Código-fonte principal da aplicação.
    - `config.py`: Configurações da aplicação.
    - `forms.py`: Definições de formulários.
    - `helpers.py`: Funções auxiliares.
    - `humangov.py`: Ponto de entrada da aplicação.
    - `Procfile`: Configuração para deploy no Heroku.
    - `README`: Informações sobre a aplicação.
    - `requirements.txt`: Dependências da aplicação.
    - `static/`: Arquivos estáticos (CSS, fontes, imagens, JS).
    - `templates/`: Templates HTML.
    - `wsgi.py`: Configuração WSGI para deploy.
- `human-gov-infrastructure/`: Contém a infraestrutura como código.
  - `ansible/`: Scripts Ansible para deploy.
    - `ansible.cfg`: Configuração do Ansible.
    - `deploy-humangov.yml`: Playbook de deploy.
    - `roles/`: Papéis do Ansible.
  - `terraform/`: Scripts Terraform para provisionamento de infraestrutura.
    - `backend.tf`: Configuração do backend.
    - `main.tf`: Configuração principal.
    - `outputs.tf`: Saídas do Terraform.
    - `variables.tf`: Variáveis do Terraform.
- `keys/`: Chaves de acesso.
  - `humangov-ec2-key.pem`: Chave PEM para acesso EC2.
- `.gitignore`: Arquivos e diretórios ignorados pelo Git.
- `README.md`: Este arquivo.