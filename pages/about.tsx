import Layout from "../components/Layout";

export default function HelloWorld() {
  return (
    <Layout>
      <div id="About" className="mt-3">
        <h1>Here, About page.</h1>
        <ul>
          <li>'Terraform'でAWS上にリソースを構築</li>
          <li>'S3'に静的コンテンツを配置</li>
          <li>'GH Actions'でCI/CDを実現</li>
        </ul>
        モダンなフロントエンド開発環境を構築するためのテンプレートです。<br />もっとも、静的ページであればGH Pagesでも十分ですが、、、
      </div>
    </Layout>
  );
};
