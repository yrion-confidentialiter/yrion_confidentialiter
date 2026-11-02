import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yrion',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0F172A)),
        useMaterial3: true,
      ),
      home: const PrivacyPolicyPage(),
    );
  }
}

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    super.key,
    required this.style,
    required this.gradient,
  });

  final String text;
  final TextStyle style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  static const LinearGradient appGradient = LinearGradient(
    colors: [Color(0xFF00FFFF), Color(0xFFFF00FF)],
  );

  @override
  Widget build(BuildContext context) {
    // Vérification de l'heure : de 18h à 6h -> Mode Nuit (Fond noir, texte blanc)
    final int currentHour = DateTime.now().hour;
    final bool isNightTime = currentHour >= 18 || currentHour < 6;

    final Color backgroundColor = isNightTime ? Colors.black : const Color(0xFFF8FAFC);
    final Color appBarColor = isNightTime ? const Color(0xFF121212) : Colors.white;
    final Color textColor = isNightTime ? Colors.white : const Color(0xFF334155);
    final Color subtitleColor = isNightTime ? Colors.grey.shade400 : const Color(0xFF64748B);

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: GradientText(
          'Yrion',
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
          gradient: appGradient,
        ),
        backgroundColor: appBarColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GradientText(
                  'Yrion : Vision, Architecture et Politique de Confidentialité',
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w800,
                    letterSpacing: -0.5,
                  ),
                  gradient: appGradient,
                ),
                const SizedBox(height: 8),
                Text(
                  'Fondé par Mitha Shamil Alan | Dernière mise à jour : 31 octobre 2026',
                  style: TextStyle(
                    color: subtitleColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 32),
                
                // Section 1: Vision du projet
                GradientText(
                  '1. Manifeste et Vision du Projet',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                  gradient: appGradient,
                ),
                const SizedBox(height: 12),
                Text(
                  'Yrion incarne une rupture fondamentale avec les paradigmes traditionnels des réseaux sociaux. À une époque où les plateformes conventionnelles favorisent la superficialité et le défilement passif, Yrion a été architecturé pour réinventer la mise en relation humaine. Notre ambition fondatrice repose sur l écosystème des agents conversationnels intelligents (chatbots interactifs). Plutôt que de laisser l utilisateur naviguer seul au hasard des profils, notre vision est de déployer un réseau social où des entités conversationnelles spécialisées guident, modèrent et catalysent les interactions. En analysant finement les aspirations, les centres d intérêt et les compétences de chaque membre, ces assistants conversationnels agissent comme des passerelles relationnelles hautement qualifiées, favorisant l émergence de communautés dynamiques, de collaborations professionnelles pertinentes et de liens authentiques fondés sur des résonances intellectuelles et personnelles communes.',
                  style: TextStyle(
                    fontSize: 15,
                    color: textColor,
                    height: 1.7,
                  ),
                ),
                const SizedBox(height: 24),

                // Section 2: État du développement et ressources
                GradientText(
                  '2. État du Développement et Transparence Financière',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                  gradient: appGradient,
                ),
                const SizedBox(height: 12),
                Text(
                  'Nous croyons en une transparence absolue envers notre communauté d utilisateurs et nos partenaires technologiques. À ce stade de notre croissance, nous tenons à clarifier que le cœur technologique d Yrion — à savoir l orchestration avancée des chatbots conversationnels de mise en relation — requiert une infrastructure de calcul distribué et des investissements en R&D considérables. En raison de contraintes budgétaires strictes et d un déficit temporaire de ressources financières et techniques, cette fonctionnalité révolutionnaire n est pas encore active dans la version actuelle de l application. L application mobile pose pour l instant les fondations architecturales indispensables, l authentification sécurisée et la structure de conformité légale. Dès que les conditions de financement et de levée de ressources le permettront, le déploiement progressif de nos modules d intelligence artificielle sera enclenché. Chaque utilisateur recevra une notification dédiée directement au sein de l application dès que ces fonctionnalités de mise en relation par chatbot seront disponibles.',
                  style: TextStyle(
                    fontSize: 15,
                    color: textColor,
                    height: 1.7,
                  ),
                ),
                const SizedBox(height: 24),

                // Section 3: Politique de confidentialité
                GradientText(
                  '3. Politique de Confidentialité et Traitement des Données',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                  gradient: appGradient,
                ),
                const SizedBox(height: 12),
                Text(
                  'La présente politique de confidentialité explicite la manière dont Yrion collecte, traite et sécurise vos données à caractère personnel dans le cadre de l exploitation de nos services numériques.',
                  style: TextStyle(
                    fontSize: 15,
                    color: textColor,
                    height: 1.7,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'A. Données collectées',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: textColor,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  'Lors de votre authentification via le protocole Google Sign-In, nous recueillons strictement les informations de profil de base mises à disposition par votre compte Google, à savoir :\n- Votre nom et prénom\n- Votre adresse e-mail\n- Votre photo de profil associée',
                  style: TextStyle(
                    fontSize: 15,
                    color: textColor,
                    height: 1.6,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'B. Finalité du traitement',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: textColor,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  'Les informations recueillies sont utilisées exclusivement pour l authentification sécurisée, l initialisation de votre session utilisateur et la gestion de votre compte au sein de l écosystème Yrion. Aucune commercialisation ni cession de vos données personnelles à des tiers n est effectuée.',
                  style: TextStyle(
                    fontSize: 15,
                    color: textColor,
                    height: 1.6,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'C. Sécurité des infrastructures',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: textColor,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  'Nous appliquons des standards rigoureux de sécurité informatique pour prémunir vos données contre tout accès non autorisé, altération, divulgation ou destruction.',
                  style: TextStyle(
                    fontSize: 15,
                    color: textColor,
                    height: 1.6,
                  ),
                ),
                const SizedBox(height: 24),

                // Section 4: Contact
                GradientText(
                  '4. Contact et Support',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                  gradient: appGradient,
                ),
                const SizedBox(height: 12),
                Text(
                  'Pour toute question relative à cette politique, à la gestion de vos données personnelles ou pour toute réclamation, vous pouvez joindre notre équipe à l adresse électronique suivante : shamilalanalan@gmail.com',
                  style: TextStyle(
                    fontSize: 15,
                    color: textColor,
                    height: 1.7,
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

