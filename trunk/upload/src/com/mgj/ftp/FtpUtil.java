package com.mgj.ftp;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;

import sun.net.TelnetOutputStream;
import sun.net.TelnetInputStream;
import sun.net.ftp.FtpClient;

public class FtpUtil {
    String localfilename;

    String remotefilename;

    FtpClient ftpClient;

    // server：服务器名字
    // user：用户名
    // password：密码
    // path：服务器上的路径
    public void connectServer(String ip, int port, String user,
            String password, String path) {
    	
        try {
            ftpClient = new FtpClient();
            ftpClient.openServer(ip, port);
            ftpClient.login(user, password);
            System.out.println("login success!");
            if (path.length() != 0)
                ftpClient.cd(path);
            ftpClient.binary();
        } catch (IOException ex) {
            System.out.println("not login");
            System.out.println(ex);
        }
    }

    public void closeConnect() {
        try {
            ftpClient.closeServer();
            System.out.println("disconnect success");
        } catch (IOException ex) {
            System.out.println("not disconnect");
            System.out.println(ex);
        }
    }

    public void upload() {

        this.localfilename = "D://1.txt";
        this.remotefilename = "test2.txt";

        try {
            TelnetOutputStream os = ftpClient.put(this.remotefilename);
            java.io.File file_in = new java.io.File(this.localfilename);
            FileInputStream is = new FileInputStream(file_in);
            byte[] bytes = new byte[1024];
            int c;
            while ((c = is.read(bytes)) != -1) {
                os.write(bytes, 0, c);
            }
            System.out.println("upload success");
            is.close();
            os.close();
        } catch (IOException ex) {
            System.out.println("not upload");
            System.out.println(ex);
        }
    }

    public void download() {

        try {
            TelnetInputStream is = ftpClient.get(this.remotefilename);
            java.io.File file_in = new java.io.File(this.localfilename);
            FileOutputStream os = new FileOutputStream(file_in);
            byte[] bytes = new byte[1024];
            int c;
            while ((c = is.read(bytes)) != -1) {
                // System.out.println((char)is.read());
                // System.out.println(file_in);
                os.write(bytes, 0, c);
            }

            System.out.println("download success");
            os.close();
            is.close();
        } catch (IOException ex) {
            System.out.println("not download");
            System.out.println(ex);
        }
    }
    
    public boolean deleteFile(String ftpPath, String fileName) {
    	
    	try {
    		//进入要删除的目录
			ftpClient.cd(ftpPath);
	    	
			ftpClient.sendServer("DELE "+fileName+"\r\n");

			int status = ftpClient.readServerResponse();
System.out.println(status);
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		
    	return true;
    }

    public void download(String remotePath, String remoteFile, String localFile) {

        try {
            if (remotePath.length() != 0)
                ftpClient.cd(remotePath);
            TelnetInputStream is = ftpClient.get(remoteFile);
            java.io.File file_in = new java.io.File(localFile);
            FileOutputStream os = new FileOutputStream(file_in);
            byte[] bytes = new byte[1024];
            int c;
            while ((c = is.read(bytes)) != -1) {
                // System.out.println((char)is.read());
                // System.out.println(file_in);
                os.write(bytes, 0, c);
            }

            System.out.println("download success");
            os.close();
            is.close();
        } catch (IOException ex) {
            System.out.println("not download");
            System.out.println(ex);
        }
    }

    public void download(String remoteFile, String localFile) {

        try {
//        	ftpClient.
            TelnetInputStream is = ftpClient.get(remoteFile);
            java.io.File file_in = new java.io.File(localFile);
            FileOutputStream os = new FileOutputStream(file_in);
            byte[] bytes = new byte[1024];
            int c;
            while ((c = is.read(bytes)) != -1) {
                // System.out.println((char)is.read());
                // System.out.println(file_in);
                os.write(bytes, 0, c);
            }

            System.out.println("download success");
            os.close();
            is.close();
        } catch (IOException ex) {
            System.out.println("not download");
            System.out.println(ex);
        }
    }

    public static void main(String agrs[]) {
        FtpUtil fu = new FtpUtil();
        fu.connectServer("127.0.0.1", 21, "upload", "123456","/Ftproot");
        try{
        	//删除服务器上的文件
        	//fu.ftpClient.sendServer("dele 2.txt ");
        	//System.out.println(fu.ftpClient.readServerResponse());
        	fu.deleteFile("/Ftproot", "test");
        	//fu.deleteFile("/Ftproot/test", "101.txt");
        	//fu.deleteFile("/Ftproot/test", "102.txt");
        } catch(Exception e) {
        	e.printStackTrace();
        } finally {
        	fu.closeConnect();
        }
    }
}
//FTP远程命令列表<br>
//USER    PORT    RETR    ALLO    DELE    SITE    XMKD    CDUP    FEAT<br>
//PASS    PASV    STOR    REST    CWD     STAT    RMD     XCUP    OPTS<br>
//ACCT    TYPE    APPE    RNFR    XCWD    HELP    XRMD    STOU    AUTH<br>
//REIN    STRU    SMNT    RNTO    LIST    NOOP    PWD     SIZE    PBSZ<br>
//QUIT    MODE    SYST    ABOR    NLST    MKD     XPWD    MDTM    PROT<br>
//     在服务器上执行命令,如果用sendServer来执行远程命令(不能执行本地FTP命令)的话，所有FTP命令都要加上 <br>
//          ftpclient.sendServer("XMKD /test/bb "); //执行服务器上的FTP命令<br>
//          ftpclient.readServerResponse一定要在sendServer后调用<br>
//          nameList("/test")获取指目录下的文件列表<br>
//          XMKD建立目录，当目录存在的情况下再次创建目录时报错<br>
//          XRMD删除目录<br>
//          DELE删除文件<br>

