# Roles

Roles são conjuntos de tarefas e configurações que podem ser reutilizadas em diferentes playbooks do Ansible.

Uma role organiza variáveis, tasks, handlers, templates e outros arquivos relacionados em uma estrutura de diretórios padronizada.

## Estrutura básica de uma role


roles/
    role_name/
        tasks/
            main.yml
        handlers/
            main.yml  
        templates/
        files/
        vars/
            main.yml
        defaults/
            main.yml
        meta/
            main.yml


## Benefícios

- Reutilização de código
- Organização modular
- Facilita manutenção
- Permite compartilhamento
- Melhor legibilidade

## Como usar

As roles podem ser referenciadas em playbooks da seguinte forma:


- hosts: servers
  roles:
    - role_name
