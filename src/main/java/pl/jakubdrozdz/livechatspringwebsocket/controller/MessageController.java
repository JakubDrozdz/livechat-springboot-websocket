package pl.jakubdrozdz.livechatspringwebsocket.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Slf4j
public class MessageController {

    @MessageMapping("/send-message")
    @SendTo("/topic/livechat")
    public ChatMessage onMessage(@Payload ChatMessage chatMessage){
        if(chatMessage.username().equals("jakub1k")){
            log.info("Message from jakub1k");
        }
        return chatMessage;
    }
}
