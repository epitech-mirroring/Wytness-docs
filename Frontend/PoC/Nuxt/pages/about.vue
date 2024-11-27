<template>
    <div class="about-page">
      <h1>À propos de nous</h1>
      
      <section>
        <h2>Notre mission</h2>
        <p>
          Nous sommes une entreprise passionnée par [insérer votre domaine d’activité]. 
          Notre mission est de fournir des [services/produits] de qualité pour aider nos clients à [objectif de l’entreprise].
        </p>
      </section>
  
      <section>
        <h2>Notre équipe</h2>
        <p>
          Notre équipe est composée de professionnels expérimentés et dédiés. Nous travaillons ensemble pour garantir la satisfaction de nos clients et l'excellence dans tous nos projets.
        </p>
        <ul>
          <li><strong>Nom 1</strong> - Rôle</li>
          <li><strong>Nom 2</strong> - Rôle</li>
          <li><strong>Nom 3</strong> - Rôle</li>
        </ul>
      </section>
  
      <section>
        <h2>Nos valeurs</h2>
        <ul>
          <li><strong>Innovation :</strong> Nous cherchons constamment à innover pour améliorer nos services.</li>
          <li><strong>Engagement :</strong> Nous sommes engagés à fournir un service client exceptionnel.</li>
          <li><strong>Qualité :</strong> Nous mettons un point d'honneur à offrir des produits et services de la plus haute qualité.</li>
        </ul>
      </section>
  
      <section>
        <h2>Nos locaux</h2>
        <p>
          Nous sommes basés à [adresse de votre entreprise]. Si vous souhaitez en savoir plus ou venir nous rendre visite, n'hésitez pas à nous contacter !
        </p>
      </section>
    </div>
  </template>
  
  <script>
  export default {
    name: 'AboutPage',
  };
  </script>
  
  <style scoped>
  .about-page {
    max-width: 900px;
    margin: 0 auto;
    padding: 2rem;
  }
  
  h1 {
    text-align: center;
    margin-bottom: 2rem;
  }
  
  section {
    margin-bottom: 2rem;
  }
  
  h2 {
    font-size: 1.5rem;
    margin-bottom: 0.5rem;
  }
  
  p {
    font-size: 1rem;
    line-height: 1.6;
  }
  
  ul {
    list-style: none;
    padding-left: 0;
  }
  
  li {
    margin-bottom: 0.5rem;
  }
  </style>
  