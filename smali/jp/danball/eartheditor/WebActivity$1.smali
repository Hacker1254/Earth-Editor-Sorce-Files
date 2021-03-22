.class Ljp/danball/eartheditor/WebActivity$1;
.super Landroid/webkit/WebViewClient;
.source "WebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/danball/eartheditor/WebActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/danball/eartheditor/WebActivity;


# direct methods
.method constructor <init>(Ljp/danball/eartheditor/WebActivity;)V
    .locals 0
    .param p1, "this$0"    # Ljp/danball/eartheditor/WebActivity;

    .prologue
    .line 64
    iput-object p1, p0, Ljp/danball/eartheditor/WebActivity$1;->this$0:Ljp/danball/eartheditor/WebActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Ljp/danball/eartheditor/WebActivity$1;->this$0:Ljp/danball/eartheditor/WebActivity;

    iget-object v1, v1, Ljp/danball/eartheditor/WebActivity;->layout:Landroid/widget/LinearLayout;

    const-string v2, "progress"

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 88
    .local v0, "progress":Landroid/widget/ProgressBar;
    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 90
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljp/danball/eartheditor/WebActivity$1;->this$0:Ljp/danball/eartheditor/WebActivity;

    iget-object v2, v2, Ljp/danball/eartheditor/WebActivity;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    iget-object v1, p0, Ljp/danball/eartheditor/WebActivity$1;->this$0:Ljp/danball/eartheditor/WebActivity;

    iget-object v1, v1, Ljp/danball/eartheditor/WebActivity;->button_ext:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 93
    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 69
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 74
    iget-object v1, p0, Ljp/danball/eartheditor/WebActivity$1;->this$0:Ljp/danball/eartheditor/WebActivity;

    iget-object v1, v1, Ljp/danball/eartheditor/WebActivity;->layout:Landroid/widget/LinearLayout;

    const-string v2, "progress"

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 75
    .local v0, "progress":Landroid/widget/ProgressBar;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 77
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljp/danball/eartheditor/WebActivity$1;->this$0:Ljp/danball/eartheditor/WebActivity;

    iget-object v2, v2, Ljp/danball/eartheditor/WebActivity;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    iget-object v1, p0, Ljp/danball/eartheditor/WebActivity$1;->this$0:Ljp/danball/eartheditor/WebActivity;

    iget-object v1, v1, Ljp/danball/eartheditor/WebActivity;->button_ext:Landroid/widget/ImageButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 80
    :cond_1
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 98
    iget-object v2, p0, Ljp/danball/eartheditor/WebActivity$1;->this$0:Ljp/danball/eartheditor/WebActivity;

    iget-object v2, v2, Ljp/danball/eartheditor/WebActivity;->url_scheme:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 99
    iget-object v2, p0, Ljp/danball/eartheditor/WebActivity$1;->this$0:Ljp/danball/eartheditor/WebActivity;

    iget-object v2, v2, Ljp/danball/eartheditor/WebActivity;->url_scheme:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {p2, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 106
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "url"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object v2, p0, Ljp/danball/eartheditor/WebActivity$1;->this$0:Ljp/danball/eartheditor/WebActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Ljp/danball/eartheditor/WebActivity;->setResult(ILandroid/content/Intent;)V

    .line 109
    iget-object v2, p0, Ljp/danball/eartheditor/WebActivity$1;->this$0:Ljp/danball/eartheditor/WebActivity;

    invoke-virtual {v2}, Ljp/danball/eartheditor/WebActivity;->finish()V

    .line 129
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1
    return v1

    .line 115
    :cond_0
    const-string v2, "market://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "amzn://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 117
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Ljp/danball/eartheditor/WebActivity$1;->this$0:Ljp/danball/eartheditor/WebActivity;

    invoke-virtual {v2, v0}, Ljp/danball/eartheditor/WebActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 129
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 102
    :catch_0
    move-exception v2

    goto :goto_0
.end method
