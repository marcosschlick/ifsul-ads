import 'package:flutter/material.dart';

// =============================================================================
// AULA — ACESSIBILIDADE (BASE PARA A AULA)
// =============================================================================
// Esta é a estrutura da página de perfil. As partes que a gente vai trabalhar
// em acessibilidade estão marcadas com // TODO — é aí que vocês vão codar.
// A ideia: manter contraste 4,5:1, Semantics para leitor de tela e regiões.
// =============================================================================

class AulaAcessibilidadePage extends StatelessWidget {
  const AulaAcessibilidadePage({
    super.key,
    required this.mostrarRaioX,
    required this.aoAlternarRaioX,
  });

  final bool mostrarRaioX;
  final ValueChanged<bool> aoAlternarRaioX;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aula — Acessibilidade'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            icon: Icon(
              mostrarRaioX ? Icons.accessibility : Icons.accessibility_new,
            ),
            tooltip: mostrarRaioX ? 'Desligar Raio-X' : 'Ligar Raio-X',
            onPressed: () => aoAlternarRaioX(!mostrarRaioX),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 16),

            // -----------------------------------------------------------------
            // TODO: Envolver o avatar com Semantics.
            // Use label: 'Foto de perfil de Maria Silva' e image: true.
            // Assim o leitor de tela descreve a imagem em vez de só dizer "imagem".
            // -----------------------------------------------------------------
            Semantics(
              label: 'Foto de perfil de Maria Silva',
              image: true,
              child: CircleAvatar(
                radius: 56,
                backgroundColor: Colors.indigo.shade100,
                child: Icon(
                  Icons.person,
                  size: 56,
                  color: Colors.indigo.shade700,
                ),
              ),
            ),
            const SizedBox(height: 24),

            // -----------------------------------------------------------------
            // TODO: Envolver o texto do nome com Semantics.
            // Use label: 'Nome do usuário' e header: true (é um cabeçalho).
            // -----------------------------------------------------------------
            Semantics(
              label: 'Nome do usuário',
              header: true,
              child: Text(
                'Maria Silva',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: Colors.grey.shade900,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8),

            // -----------------------------------------------------------------
            // TODO: Garantir bom contraste no texto (WCAG 4,5:1).
            // Use uma cor escura no texto (ex.: grey[700]) em fundo claro.
            // -----------------------------------------------------------------
            Text(
              'maria.silva@email.com',
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(color: Colors.grey.shade900),
            ),

            const SizedBox(height: 32),

            // -----------------------------------------------------------------
            // TODO: Envolver o Card com Semantics(container: true, label: 'Informações do perfil').
            // Isso agrupa o bloco pra o leitor de tela navegar por região.
            // -----------------------------------------------------------------
            Semantics(
              container: true,
              label: 'Informações do perfil',
              child: Card(
                margin: EdgeInsets.zero,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _PerfilRow(
                        icon: Icons.badge_outlined,
                        label: 'Cargo',
                        value: 'Desenvolvedora Mobile',
                      ),
                      const Divider(height: 24),
                      _PerfilRow(
                        icon: Icons.phone_outlined,
                        label: 'Telefone',
                        value: '(11) 98765-4321',
                      ),
                      const Divider(height: 24),
                      _PerfilRow(
                        icon: Icons.calendar_today_outlined,
                        label: 'Membro desde',
                        value: 'Jan/2024',
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 24),

            // -----------------------------------------------------------------
            // TODO: Usar MergeSemantics no ListTile e ExcludeSemantics no ícone leading.
            // MergeSemantics junta título + ação num bloco só pro leitor.
            // ExcludeSemantics no ícone evita ler "ícone" à toa.
            // -----------------------------------------------------------------
            MergeSemantics(
              child: ListTile(
                leading: ExcludeSemantics(child: Icon(Icons.settings)),
                title: const Text('Configurações Avançadas'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {},
              ),
            ),
            const SizedBox(height: 24),

            // -----------------------------------------------------------------
            // TODO: Envolver o botão com Semantics(button: true, label: 'Editar perfil').
            // Envolver também com ConstrainedBox(constraints: BoxConstraints(minHeight: 48))
            // pra área de toque mínima (WCAG).
            // -----------------------------------------------------------------
            ConstrainedBox(
              constraints: const BoxConstraints(minHeight: 48),
              child: Semantics(
                button: true,
                label: 'Editar perfil',
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.edit_outlined),
                  label: const Text('Editar perfil'),
                ),
              ),
            ),

            const SizedBox(height: 32),

            // -----------------------------------------------------------------
            // TODO: Envolver este Container com Semantics(container: true, label: 'Exemplo de texto com contraste ruim — não use em produção').
            // O bloco já está com contraste ruim de propósito (texto claro em fundo claro).
            // -----------------------------------------------------------------
            Semantics(
              container: true,
              label:
                  'Exemplo de texto com contraste ruim — não use em produção',
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.amber.shade50,
                  border: Border.all(color: const Color.fromARGB(255, 0, 0, 0)),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.warning_amber_rounded,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        'Evite texto amarelo claro em fundo claro: contraste < 4,5:1.',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            Text(
              'O bloco acima tem contraste ruim de propósito. Nos seus apps, usem cores que passem no teste 4,5:1 (ex.: WebAIM Contrast Checker).',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Colors.grey.shade700,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

// -----------------------------------------------------------------------------
// Widget auxiliar: cada linha do card (ícone + label + valor).
// -----------------------------------------------------------------------------
class _PerfilRow extends StatelessWidget {
  const _PerfilRow({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 22, color: Colors.grey.shade700),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: Theme.of(
                  context,
                ).textTheme.labelSmall?.copyWith(color: Colors.grey.shade600),
              ),
              const SizedBox(height: 2),
              Text(
                value,
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge?.copyWith(color: Colors.grey.shade900),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
