package com.usc.model;

import java.util.Collection;
import java.util.Set;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

/**
 * @author 陈玄礼 E-mail:chenxiake008@qq.com
 * @version 创建时间：2017年2月2日 下午11:23:59 用户类
 */
public class User implements UserDetails {

	/**
	 * @fieldName: serialVersionUID
	 * @fieldType: long
	 * @Description: TODO
	 */
	private static final long serialVersionUID = -8362487669860201185L;
	private String account; // 账号->管理员账号自定义->学生账号为考生号
	private String password;// 密码
	private String name;
	private String sex;
	private String kslb; // 考生类别
	private String kl; // 科类
	private String sfzh; // 身份证号
	private String telnum1; // 联系电话1
	private String telnum2; // 联系电话2
	private String tdcj; // 投档成绩
	private String ylzy; // 预录专业
	private String zydh1; // 志愿1
	private String zydh2; // 志愿2
	private String zydh3; // 志愿3
	private String zydh4; // 志愿4
	private String zydh5; // 志愿5
	private String zydh6; // 志愿6
	private String img; // 图片名称
	private String opreation; // 执行操作
	private String shzt; // 审核状态
	private String isadopt; // 是否通过
	private String pc; // 批次
	private Set<GrantedAuthority> authorities;// 角色
	private boolean accountNonExpired;// 用户账号是否过期
	private boolean accountNonLocked;// 用户账号是否被锁定
	private boolean credentialsNonExpired;// 用户密码是否过期
	private boolean enabled;// 用户是否可用

	/**
	 * Constructor
	 * 
	 * @Title:User
	 * @Description:TODO
	 */
	public User() {
	}

	/**
	 * Constructor
	 * 
	 * @Title:User
	 * @Description:TODO
	 * @param account
	 * @param password
	 * @param name
	 * @param sex
	 * @param kslb
	 * @param kl
	 * @param sfzh
	 * @param telnum1
	 * @param tdcj
	 * @param ylzy
	 * @param zydh1
	 * @param zydh2
	 * @param zydh3
	 * @param zydh4
	 * @param zydh5
	 * @param zydh6
	 * @param opreation
	 * @param shzt
	 * @param pc
	 * @param authorities
	 * @param accountNonExpired
	 * @param accountNonLocked
	 * @param credentialsNonExpired
	 * @param enabled
	 */
	public User(String account, String password, String name, String sex,
			String kslb, String kl, String sfzh, String telnum1, String tdcj,
			String ylzy, String zydh1, String zydh2, String zydh3,
			String zydh4, String zydh5, String zydh6, String opreation,
			String shzt, String pc, Set<GrantedAuthority> authorities,
			boolean accountNonExpired, boolean accountNonLocked,
			boolean credentialsNonExpired, boolean enabled) {
		super();
		this.account = account;
		this.password = password;
		this.name = name;
		this.sex = sex;
		this.kslb = kslb;
		this.kl = kl;
		this.sfzh = sfzh;
		this.telnum1 = telnum1;
		this.tdcj = tdcj;
		this.ylzy = ylzy;
		this.zydh1 = zydh1;
		this.zydh2 = zydh2;
		this.zydh3 = zydh3;
		this.zydh4 = zydh4;
		this.zydh5 = zydh5;
		this.zydh6 = zydh6;
		this.opreation = opreation;
		this.shzt = shzt;
		this.pc = pc;
		this.authorities = authorities;
		this.accountNonExpired = accountNonExpired;
		this.accountNonLocked = accountNonLocked;
		this.credentialsNonExpired = credentialsNonExpired;
		this.enabled = enabled;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return authorities;
	}

	@Override
	public String getUsername() {
		return this.account;
	}

	@Override
	public boolean isAccountNonExpired() {
		return this.accountNonExpired;
	}

	@Override
	public boolean isAccountNonLocked() {
		return this.accountNonLocked;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return this.credentialsNonExpired;
	}

	@Override
	public boolean isEnabled() {
		return this.enabled;
	}

	@Override
	public String getPassword() {
		return this.password;
	}

	// Getters and Setters...
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getKslb() {
		return kslb;
	}

	public void setKslb(String kslb) {
		this.kslb = kslb;
	}

	public String getKl() {
		return kl;
	}

	public void setKl(String kl) {
		this.kl = kl;
	}

	public String getSfzh() {
		return sfzh;
	}

	public void setSfzh(String sfzh) {
		this.sfzh = sfzh;
	}

	public String getTelnum1() {
		return telnum1;
	}

	public void setTelnum1(String telnum1) {
		this.telnum1 = telnum1;
	}

	public String getTelnum2() {
		return telnum2;
	}

	public void setTelnum2(String telnum2) {
		this.telnum2 = telnum2;
	}

	public String getTdcj() {
		return tdcj;
	}

	public void setTdcj(String tdcj) {
		this.tdcj = tdcj;
	}

	public String getYlzy() {
		return ylzy;
	}

	public void setYlzy(String ylzy) {
		this.ylzy = ylzy;
	}

	public String getZydh1() {
		return zydh1;
	}

	public void setZydh1(String zydh1) {
		this.zydh1 = zydh1;
	}

	public String getZydh2() {
		return zydh2;
	}

	public void setZydh2(String zydh2) {
		this.zydh2 = zydh2;
	}

	public String getZydh3() {
		return zydh3;
	}

	public void setZydh3(String zydh3) {
		this.zydh3 = zydh3;
	}

	public String getZydh4() {
		return zydh4;
	}

	public void setZydh4(String zydh4) {
		this.zydh4 = zydh4;
	}

	public String getZydh5() {
		return zydh5;
	}

	public void setZydh5(String zydh5) {
		this.zydh5 = zydh5;
	}

	public String getZydh6() {
		return zydh6;
	}

	public void setZydh6(String zydh6) {
		this.zydh6 = zydh6;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getOpreation() {
		return opreation;
	}

	public void setOpreation(String opreation) {
		this.opreation = opreation;
	}

	public String getShzt() {
		return shzt;
	}

	public void setShzt(String shzt) {
		this.shzt = shzt;
	}

	public String getIsadopt() {
		return isadopt;
	}

	public void setIsadopt(String isadopt) {
		this.isadopt = isadopt;
	}

	public String getPc() {
		return pc;
	}

	public void setPc(String pc) {
		this.pc = pc;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setAuthorities(Set<GrantedAuthority> authorities) {
		this.authorities = authorities;
	}

	public void setAccountNonExpired(boolean accountNonExpired) {
		this.accountNonExpired = accountNonExpired;
	}

	public void setAccountNonLocked(boolean accountNonLocked) {
		this.accountNonLocked = accountNonLocked;
	}

	public void setCredentialsNonExpired(boolean credentialsNonExpired) {
		this.credentialsNonExpired = credentialsNonExpired;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

}
