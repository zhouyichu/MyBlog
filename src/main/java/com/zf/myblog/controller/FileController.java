package com.zf.myblog.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import com.zf.myblog.common.MyBlogConstant;

/**
 * 文件操作
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/file")
public class FileController {

	/**
	 * 文件上传
	 * @param files 文件
	 * @param operType 类型
	 * @param request
	 * @return Map<"fileList",文件名集合>
	 */
	@RequestMapping(value = "/upload", method = { RequestMethod.POST})
	public @ResponseBody Map<String, Object> upload(@RequestParam("file") MultipartFile[] files,
			@RequestParam("operType") String operType, HttpServletRequest request){
		Map<String, Object> result = new HashMap<String, Object>();
		List<String> fileList = new ArrayList<String>();
		for (MultipartFile file : files) {
			String fileProtalName = file.getOriginalFilename();
			String suffix = fileProtalName.substring(fileProtalName.lastIndexOf(".") + 1);
			String fileName = System.currentTimeMillis()+"."+suffix;//使用时间戳替换文件名
			String path = System.getProperty("user.dir") + MyBlogConstant.EDIT_UPLOAD_IMG_PATH;
			Date date = new Date(System.currentTimeMillis());
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			String nyr = dateFormat.format(date);
			path += "/" + nyr;
			File filePath = new File(path);
			if (!filePath.exists()) {// 创建文件路径
				filePath.mkdirs();
			}
			File dest = new File(filePath + "/" + fileName);
			try {
				file.transferTo(dest); // 保存文件
				fileList.add(nyr+"/"+fileName);
			} catch (Exception e) {
				e.printStackTrace();
				result.put("result", "false");
				return result;
			}
		}
		result.put("result", "true");
		result.put("fileList", fileList);
		return result;
	}
	
	@RequestMapping(value = "/getImage/{nyr}/{fileName}", produces = MediaType.IMAGE_JPEG_VALUE)
	@ResponseBody
	public byte[] getImage(@PathVariable String nyr,@PathVariable String fileName) throws IOException {
		try {
			File file = new File(System.getProperty("user.dir") + MyBlogConstant.EDIT_UPLOAD_IMG_PATH+"/"+nyr+"/"+fileName);
			FileInputStream inputStream = new FileInputStream(file);
			byte[] bytes = new byte[inputStream.available()];
			inputStream.read(bytes, 0, inputStream.available());
			return bytes;
		} catch (Exception e) {
			return null;
		}
	}
}
