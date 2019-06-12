package jp.co.runy.security.security_measures.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import jp.co.runy.security.security_measures.domain.Article;
import jp.co.runy.security.security_measures.service.ArticleService;

/**
 * 掲示板アプリケーションのコントローラ.
 * 
 * @author igamasayuki
 *
 */
@Controller
@RequestMapping("/bbs")
public class BbsController {
	@Autowired
	private HttpSession session;

	/**
	 * 投稿画面を表示します.
	 * 
	 * @return 掲示板画面
	 */
	@RequestMapping("/show")
	public String showBbs() {
		// 今後記事内容が入る空のリストを作ってセッションスコープへ格納
		ArrayList<Article> articleList = new ArrayList<Article>();
		session.setAttribute("articleList", articleList);
		
		// 追加　開始
		String tokun = UUID.randomUUID().toString();
		session.setAttribute("tokun", tokun);
		// 追加　終了

		// 投稿画面へ遷移
		return "bbs";
	}

	/**
	 * 記事を投稿します.
	 * 
	 * @param name
	 *            リクエストパラメータのname
	 * @param body
	 *            リクエストパラメータのbody
	 * @return 掲示板画面
	 */
	@RequestMapping("/postArticle")
	public String postArticle(String name, String body,String tokun) {
		
		// 追加 開始
		String tokunInSession = (String) session.getAttribute("tokun");
		if (tokun == null || !(tokun.equals(tokunInSession))) {
			return "error";
		}
		// 追加　終了
		
		List<Article> articleList = (List<Article>) session.getAttribute("articleList");
		Article article = new Article(name, body);
		ArticleService articleService = new ArticleService();
		articleService.postArticle(articleList, article);
		
		// 追加 開始
		session.removeAttribute("token");
		// 追加　終了
		
		return "bbs";
	}

	/**
	 * 記事を削除します.
	 * 
	 * @param index
	 *            リクエストパラメータのindex
	 * @return 掲示板画面
	 */
	@RequestMapping("/deleteArticle")
	public String deleteArticle(String index) {
		List<Article> articleList = (List<Article>) session.getAttribute("articleList");
		ArticleService articleService = new ArticleService();
		int intIndex = Integer.parseInt(index); //indexをStringからintに変換
		articleService.deleteArticle(articleList, intIndex);
		return "bbs";
	}
}
