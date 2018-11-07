package jp.co.runy.security.security_measures.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jp.co.runy.security.security_measures.domain.Member;
import jp.co.runy.security.security_measures.repository.MemberRepository;

/**
 * メンバーを操作するサービスクラス.
 * 
 * @author igamasayuki
 *
 */
@Service
public class MemberService {
	@Autowired
	private MemberRepository memberRepository;
	
	/**
	 * 名前からメンバーを曖昧検索する.
	 * 
	 * @param name
	 *            名前
	 * @return 検索されたメンバー一覧
	 */
	public List<Member> findByLikeName(String name) {
		return memberRepository.findByLikeName(name);
	}
	
}
