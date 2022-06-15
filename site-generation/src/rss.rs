use crate::post::Post;

fn post_to_rss(post : &Post, base_url : &str) -> String {
    let components : Vec<String> = vec![
        "<item><title>".to_string(),
        post.name.to_string(),
        "</title><link>".to_string(),
        base_url.to_string(),
        "posts/".to_string(),
        post.api_name.clone(),
        "</link><description>".to_string(),
        post.preview.clone(),
        "</description><pubDate>".to_string(),
        post.date.day.to_string(),
        " ".to_string(),
        post.date.month.to_string(),
        " ".to_string(),
        post.date.year.to_string(),
        "</pubDate><content:encoded><![CDATA[".to_string(),
        post.html.to_string(),
        "]]></content:encoded></item>".to_string()
    ];

    components.join("")
}

pub fn generate_rss(posts : &Vec<Post>, title : &str, base_url : &str) -> String {

    let mut post_string = String::new();

    for post in posts {
        post_string.push_str(&post_to_rss(post, base_url));
    }

    let components : Vec<String> = vec![
        "<?xml version=\"1.0\" encoding=\"UTF-8\" ?><rss xmlns:content=\"http://purl.org/rss/1.0/modules/content/\" version=\"2.0\"><channel><title>".to_string(),
        title.to_string(),
        "</title><link>".to_string(),
        base_url.to_string(),
        "</link><description>A blog about mathematics and computing.</description>".to_string(),
        post_string,
        "</channel></rss>".to_string()
    ];

    components.join("")
} 


