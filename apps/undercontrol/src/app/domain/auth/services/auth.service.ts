import { inject, Injectable, Signal, signal } from '@angular/core';
import { iUser } from '../interfaces/user.interface';
import { injectSupabase } from '@shared/functions/inject-supabase.function';
import { Router } from '@angular/router';

@Injectable({ providedIn: 'root' })
export class AuthService {
  private supabase = injectSupabase();
  private router = inject(Router);

  currentUser = signal<iUser | null>(null);
  isLoggedIn = signal<boolean>(false);

  async load() {
    const { data } = await this.supabase.auth.getSession();

    if (!data.session) {
      await this.purgeAndRedirect();
      return;
    }

    this.currentUser.set(data.session.user as unknown as iUser);
    this.isLoggedIn.set(true);
    console.log('User logado: ', this.currentUser());
  }

  async purgeAndRedirect() {
    await this.supabase.auth.signOut();
    this.router.navigate(['/auth']);
  }
}
