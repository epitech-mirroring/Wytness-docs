<template>
    <footer class="footer">
      <div class="footer-content">
        <div class="footer-links">
          <NuxtLink to="/home" class="footer-link">Accueil</NuxtLink>
          <NuxtLink to="/about" class="footer-link">À propos</NuxtLink>
          <NuxtLink to="/contact" class="footer-link">Contact</NuxtLink>
          <NuxtLink to="/legal" class="footer-link">Mentions légales</NuxtLink> <!-- Lien vers la page légale -->
        </div>
        <div class="footer-contact">
          <p>Contactez-nous : <a href="mailto:contact@votre-site.com">contact@wytness.fr</a></p>
        </div>
      </div>
      <div class="footer-credit">
        <p>&copy; 2024 Votre Site - Tous droits réservés.</p>
      </div>
    </footer>
</template>

<style scoped>
  .footer {
    background-color: #333;
    color: white;
    padding: 1rem;
    text-align: center;
  }

  .footer-content {
    display: flex;
    justify-content: space-between;
    align-items: center;
    flex-wrap: wrap;
    margin-bottom: 1rem;
  }

  .footer-links {
    display: flex;
    gap: 1rem;
  }

  .footer-link {
    color: white;
    text-decoration: none;
  }

  .footer-link:hover {
    text-decoration: underline;
  }

  .footer-contact a {
    color: white;
    text-decoration: none;
  }

  .footer-credit {
    font-size: 0.875rem;
    margin-top: 1rem;
  }
</style>
