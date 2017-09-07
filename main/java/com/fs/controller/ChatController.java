package com.fs.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.fs.domain.ChatroomVO;
import com.fs.service.ChatService;

@RestController
@RequestMapping("/chat")
public class ChatController {

	@Inject
	ChatService service;
	
	@RequestMapping(value="/getChatroomList/{uid}", method=RequestMethod.GET)
	public List<ChatroomVO> getChatroomList(@PathVariable("uid") String uid) throws Exception {
		
		return service.getChatroomList(uid);
	}
}
