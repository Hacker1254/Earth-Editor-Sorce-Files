.class Ljp/danball/eartheditor/WebActivity$3;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 207
    iput-object p1, p0, Ljp/danball/eartheditor/WebActivity$3;->this$0:Ljp/danball/eartheditor/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 210
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Ljp/danball/eartheditor/WebActivity$3;->this$0:Ljp/danball/eartheditor/WebActivity;

    iget-object v2, v2, Ljp/danball/eartheditor/WebActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 211
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Ljp/danball/eartheditor/WebActivity$3;->this$0:Ljp/danball/eartheditor/WebActivity;

    invoke-virtual {v1, v0}, Ljp/danball/eartheditor/WebActivity;->startActivity(Landroid/content/Intent;)V

    .line 212
    return-void
.end method
