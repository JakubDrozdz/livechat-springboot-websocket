package pl.jakubdrozdz.livechatspringwebsocket.controller;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;

@JsonSerialize
public record ChatMessage(String username, String message) {
}
