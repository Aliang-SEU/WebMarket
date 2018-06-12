package cn.aliang.Util;

import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.util.Date;

public class FileUpload {

    /**
     * 图片上传接口
     * @param file
     * @param httpServletRequest
     * @return
     * @throws IOException
     */
    public static String uploadFile(MultipartFile file, HttpServletRequest httpServletRequest) throws IOException {

        String fileName = file.getOriginalFilename();
        String imagePath = httpServletRequest.getServletContext().getRealPath("img/good");

        File tempFile = new File(imagePath, new Date().getTime() + String.valueOf(fileName));
        if (!tempFile.getParentFile().exists()) {
            tempFile.getParentFile().mkdir();
        }
        if (!tempFile.exists()) {
            tempFile.createNewFile();
        }
        file.transferTo(tempFile);
        return tempFile.getName();

    }
}
