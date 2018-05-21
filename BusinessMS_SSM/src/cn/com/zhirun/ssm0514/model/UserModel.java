package cn.com.zhirun.ssm0514.model;

public class UserModel {
    private Integer id;

    private String user;

    private String pwd;

    private String credate;

    private String upddate;

    private Integer deleflg;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user == null ? null : user.trim();
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd == null ? null : pwd.trim();
    }

    public String getCredate() {
        return credate;
    }

    public void setCredate(String credate) {
        this.credate = credate == null ? null : credate.trim();
    }

    public String getUpddate() {
        return upddate;
    }

    public void setUpddate(String upddate) {
        this.upddate = upddate == null ? null : upddate.trim();
    }

    public Integer getDeleflg() {
        return deleflg;
    }

    public void setDeleflg(Integer deleflg) {
        this.deleflg = deleflg;
    }
}