.class Ljp/danball/eartheditor/SystemManager$6;
.super Landroid/os/AsyncTask;
.source "SystemManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/danball/eartheditor/SystemManager;->connect(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljp/danball/eartheditor/SystemManager;


# direct methods
.method constructor <init>(Ljp/danball/eartheditor/SystemManager;)V
    .locals 0
    .param p1, "this$0"    # Ljp/danball/eartheditor/SystemManager;

    .prologue
    .line 590
    iput-object p1, p0, Ljp/danball/eartheditor/SystemManager$6;->this$0:Ljp/danball/eartheditor/SystemManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 590
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljp/danball/eartheditor/SystemManager$6;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 593
    const/4 v3, 0x0

    .line 594
    .local v3, "result":Ljava/lang/String;
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 596
    .local v0, "httpclient":Lorg/apache/http/client/HttpClient;
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-direct {v1, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 597
    .local v1, "httpget":Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 598
    .local v2, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/lang/Exception;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 600
    .end local v1    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v4

    .line 602
    :goto_0
    return-object v3

    .line 599
    .restart local v1    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v2    # "response":Lorg/apache/http/HttpResponse;
    :cond_0
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 590
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljp/danball/eartheditor/SystemManager$6;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 607
    if-nez p1, :cond_0

    const/4 v0, -0x1

    .line 608
    .local v0, "send_state_tmp":I
    :goto_0
    iget-object v1, p0, Ljp/danball/eartheditor/SystemManager$6;->this$0:Ljp/danball/eartheditor/SystemManager;

    invoke-static {v1}, Ljp/danball/eartheditor/SystemManager;->access$500(Ljp/danball/eartheditor/SystemManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Ljp/danball/eartheditor/SystemManager$6$1;

    invoke-direct {v2, p0, v0}, Ljp/danball/eartheditor/SystemManager$6$1;-><init>(Ljp/danball/eartheditor/SystemManager$6;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 644
    return-void

    .line 607
    .end local v0    # "send_state_tmp":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
