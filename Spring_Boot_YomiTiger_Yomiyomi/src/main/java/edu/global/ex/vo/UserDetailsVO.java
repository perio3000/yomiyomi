package edu.global.ex.vo;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

public class UserDetailsVO implements UserDetails{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String username;
	private String password;
	private List<GrantedAuthority> authorities;
	

	public UserDetailsVO(MemberVO user) {
		this.setAuthorities(user);
		this.setPassword(user.getPassword());
		this.setUsername(user.getUsername());
	}

	private void setAuthorities(MemberVO userVO) {
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();

		for (AuthVO auth : userVO.getAuthList()) {
			authorities.add(new SimpleGrantedAuthority(auth.getAuthority()));
		}
		this.authorities = authorities;
	}

	private void setPassword(String password) {
		this.password = password;
	}

	private void setUsername(String username) {
		this.username = username;
	}
	

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {

		return authorities;
	}

	@Override
	public String getPassword() {

		return password;
	}

	@Override
	public String getUsername() {

		return username;
	}

	//계정이 만료되지 않았는가
	@Override
	public boolean isAccountNonExpired() {

		return true;
	}

	//계정이 잠기지 않았는가?
	@Override
	public boolean isAccountNonLocked() {

		return true;
	}

	//패스워드가 만료되지 않았는가?
	@Override
	public boolean isCredentialsNonExpired() {

		return true;
	}

	//계정이 활성화 되었는가?
	@Override
	public boolean isEnabled() {

		return true;
	}
	
}
