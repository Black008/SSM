package cn.com.zhirun.ssm0514.model;

public class BusinessModel {
    private String businessid;

    private String businessname;

    private String phone;

    private String businesskinds;

    private String businessaddress;

    private String detailaddress;

    private Integer salary;
    private  Integer salaryFrom;
    private  Integer salaryTo;

    public Integer getSalaryFrom() {
        return salaryFrom;
    }

    public void setSalaryFrom(Integer salaryFrom) {
        this.salaryFrom = salaryFrom;
    }

    public Integer getSalaryTo() {
        return salaryTo;
    }

    public void setSalaryTo(Integer salaryTo) {
        this.salaryTo = salaryTo;
    }

    private String cred;

    private String uppda;

    private Integer flg;

    private String comment;

    public String getBusinessid() {
        return businessid;
    }

    public void setBusinessid(String businessid) {
        this.businessid = businessid == null ? null : businessid.trim();
    }

    public String getBusinessname() {
        return businessname;
    }

    public void setBusinessname(String businessname) {
        this.businessname = businessname == null ? null : businessname.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getBusinesskinds() {
        return businesskinds;
    }

    public void setBusinesskinds(String businesskinds) {
        this.businesskinds = businesskinds == null ? null : businesskinds.trim();
    }

    public String getBusinessaddress() {
        return businessaddress;
    }

    public void setBusinessaddress(String businessaddress) {
        this.businessaddress = businessaddress == null ? null : businessaddress.trim();
    }

    public String getDetailaddress() {
        return detailaddress;
    }

    public void setDetailaddress(String detailaddress) {
        this.detailaddress = detailaddress == null ? null : detailaddress.trim();
    }

    public Integer getSalary() {
        return salary;
    }

    public void setSalary(Integer salary) {
        this.salary = salary;
    }

    public String getCred() {
        return cred;
    }

    public void setCred(String cred) {
        this.cred = cred == null ? null : cred.trim();
    }

    public String getUppda() {
        return uppda;
    }

    public void setUppda(String uppda) {
        this.uppda = uppda == null ? null : uppda.trim();
    }

    public Integer getFlg() {
        return flg;
    }

    public void setFlg(Integer flg) {
        this.flg = flg;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment == null ? null : comment.trim();
    }
}