import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-contact',
  standalone: true,
  imports: [FormsModule],
  templateUrl: './contact.component.html',
  styleUrl: './contact.component.scss'
})
export class ContactComponent {
  form = {
    name: '',
    email: '',
    message: ''
  };

  handleSubmit() {
    console.log('Formulaire soumis :', this.form);

    // Réinitialisation du formulaire après soumission
    this.form.name = '';
    this.form.email = '';
    this.form.message = '';

    alert('Message envoyé !');
  }
}
