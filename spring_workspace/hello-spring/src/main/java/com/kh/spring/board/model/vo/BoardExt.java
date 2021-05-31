package com.kh.spring.board.model.vo;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class BoardExt extends Board{
	private boolean hasAttachment;
	private List<Attachment> attachList;
	
	
}
