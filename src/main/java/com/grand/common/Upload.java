package com.grand.common;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class Upload {

    private static final Logger LOG= LoggerFactory.getLogger(Upload.class);

    /**
     * 将单个文件转换成二进制流
     * @param file
     * @return
     */
    public  Map<String,Object> filetobyte(MultipartFile file) throws IOException {
    	Map<String,Object> map=new HashMap<String,Object>();
        InputStream is=null;
        String fileName="";
        byte[] data=null;

        if(file!=null){
            Integer size=Integer.parseInt(String.valueOf(file.getSize()));
            Integer maxSize=2097152;//上传文件不能超过20M
            if(size>maxSize){//文件过大
                LOG.error("文件过大");
                return null;
            }else {
                fileName=file.getOriginalFilename();//获取文件名
                is=file.getInputStream();//转换为二进制代码
                ByteArrayOutputStream bAOutputStram=new ByteArrayOutputStream();
                int ch;
                while ((ch=is.read())!=-1){
                    bAOutputStram.write(ch);
                }
                data=bAOutputStram.toByteArray();
                bAOutputStram.close();
                is.close();
            }
        }
        map.put("data", data);
        map.put("fileName", fileName);
        return map;
    }

}
