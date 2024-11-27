<template>
    <nav class="navbar">
      <ul class="navbar-list">
        <li class="navbar-item">
          <NuxtLink to="/home">Accueil</NuxtLink>
        </li>
        <li class="navbar-item">
          <NuxtLink to="/about">À propos</NuxtLink>
        </li>
        <li class="navbar-item">
          <NuxtLink to="/contact">Contact</NuxtLink>
        </li>
      </ul>
    </nav>
</template>

  <script>
  export default {
    name: "Navbar",
  };
  </script>

    <style scoped>
    .navbar {
      background-color: #333;
      padding: 1rem;
    }

    .navbar-list {
      display: flex;
      list-style: none;
      margin: 0;
      padding: 0;
    }
    
    .navbar-item {
      margin-right: 1rem;
    }
    
    .navbar-item a {
      color: white;
      text-decoration: none;
    }
    
    .navbar-item a:hover {
      text-decoration: underline;
    }
  </style>
