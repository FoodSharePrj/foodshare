package com.fs.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	@RequestMapping(value="/getIsreadCnt/{roomname}/{uid}", method=RequestMethod.POST)
	public String getIsreadCnt(@PathVariable("roomname") String roomname, @PathVariable("uid") String uid) throws Exception {
		
		Map<String, Object> map = new HashMap<>();
		map.put("roomname", roomname);
		map.put("writer", uid);
		
		Integer cnt = service.getIsreadCnt(map);
		
		return cnt.toString(); 
	}
}
