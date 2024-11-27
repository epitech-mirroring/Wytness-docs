<template>
    <div class="contact-page">
      <h1>Contactez-nous</h1>
      <form @submit.prevent="handleSubmit" class="contact-form">
        <div class="form-group">
          <label for="name">Nom</label>
          <input
            id="name"
            type="text"
            v-model="form.name"
            placeholder="Votre nom"
            required
          />
        </div>
        <div class="form-group">
          <label for="email">Email</label>
          <input
            id="email"
            type="email"
            v-model="form.email"
            placeholder="Votre email"
            required
          />
        </div>
        <div class="form-group">
          <label for="message">Message</label>
          <textarea
            id="message"
            v-model="form.message"
            placeholder="Votre message"
            required
          ></textarea>
        </div>
        <button type="submit">Envoyer</button>
      </form>
    </div>
</template>

<script>
  export default {
    data() {
      return {
        form: {
          name: '',
          email: '',
          message: '',
        },
      };
    },
    methods: {
      handleSubmit() {
        // Pour le moment, affiche simplement les données dans la console
        console.log('Formulaire soumis :', this.form);

        // Réinitialisation du formulaire après soumission
        this.form.name = '';
        this.form.email = '';
        this.form.message = '';

        // Vous pouvez ajouter ici une logique pour envoyer les données à un backend
        alert('Message envoyé !');
      },
    },
  };
</script>
<style scoped>
  .contact-page {
    max-width: 600px;
    margin: 5rem auto 0 auto;
    padding: 2rem;
  }

  .contact-form {
    display: flex;
    flex-direction: column;
  }

  .form-group {
    margin-bottom: 1rem;
  }

  label {
    display: block;
    margin-bottom: 0.5rem;
    font-weight: bold;
  }

  input,
  textarea {
    width: 100%;
    padding: 0.5rem;
    border: 1px solid #ccc;
    border-radius: 4px;
  }

  textarea {
    resize: vertical;
    min-height: 100px;
  }

  button {
    background-color: #333;
    color: white;
    padding: 0.75rem;
    border: none;
    border-radius: 4px;
    cursor: pointer;
  }

  button:hover {
    background-color: #555;
  }
</style>
