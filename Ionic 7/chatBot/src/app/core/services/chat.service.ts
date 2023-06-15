import { ChatMessage } from './../interfaces/chatMessage';
import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root',
})
export class ChatService {
  private apiUrl = 'http://localhost:3000/api';

  constructor(private http: HttpClient) {}

  getMessages(senderId: number, receiverId: number): Observable<ChatMessage[]> {
    const url = `${this.apiUrl}/messages?senderId=${senderId}&receiverId=${receiverId}`;
    return this.http.get<ChatMessage[]>(url);
  }
  checkMessages(
    receiverId: number
  ): Observable<ChatMessage[]> {
    const url = `${this.apiUrl}/check-messages?receiverId=${receiverId}`;
    return this.http.get<ChatMessage[]>(url);
  }

  sendMessage(message: ChatMessage): Observable<any> {
    const url = `${this.apiUrl}/messages`;
    return this.http.post<any>(url, message);
  }
  makeWebhookCall() {
    const webhookUrl = 'http://localhost:3000/webhook'; // Replace with your webhook URL
    const payload = { key: 'value' }; // Replace with the data you want to send

    this.http.post(webhookUrl, payload).subscribe(
      (response) => {
        console.log('Webhook call successful:', response);
        // Handle the response from the webhook if needed
      },
      (error) => {
        console.error('Error making webhook call:', error);
        // Handle the error if needed
      }
    );
  }
}
