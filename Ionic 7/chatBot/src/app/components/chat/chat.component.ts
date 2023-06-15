import { Component, OnInit } from '@angular/core';
import { ChatService } from '../../core/services/chat.service';
import { ChatMessage } from '../../core/interfaces/chatMessage';

@Component({
  selector: 'app-chat',
  templateUrl: './chat.component.html',
  styleUrls: ['./chat.component.scss'],
})
export class ChatComponent implements OnInit {
  messages: ChatMessage[] = [];
  senderId: number = 4; // Replace with the current user's ID
  receiverId: number = 1; // Replace with the chat recipient's ID
  newMessage: string = '';

  constructor(private chatService: ChatService) {}

  ngOnInit() {
    this.loadMessages();
    this.chatService.makeWebhookCall();
    setInterval(() => {
      const x = this.chatService
        .checkMessages(this.receiverId)
        .subscribe((res) => {
          console.log(res);
        });
    }, 4000);
  }

  loadMessages() {
    this.chatService
      .getMessages(this.senderId, this.receiverId)
      .subscribe((messages: ChatMessage[]) => {
        this.messages = messages;
      });
  }

  sendMessage() {
    const message: ChatMessage = {
      sender: this.senderId,
      receiver: this.receiverId,
      message: this.newMessage,
      timestamp: new Date().toISOString(),
    };

    this.chatService.sendMessage(message).subscribe(() => {
      this.loadMessages();
      this.newMessage = '';
    });
  }
  isSender(messageSender: number): boolean {
    return messageSender === this.senderId;
  }
}
