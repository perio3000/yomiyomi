package edu.global.ex.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class ImageVO {
	
	private int id;
	private String image;
	private int image_order;
	private int item_id;
	private String file_name;
	private String file_path;

}
