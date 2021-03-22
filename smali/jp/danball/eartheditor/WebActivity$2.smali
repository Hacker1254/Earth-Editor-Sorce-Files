.class Ljp/danball/eartheditor/WebActivity$2;
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
    .line 151
    iput-object p1, p0, Ljp/danball/eartheditor/WebActivity$2;->this$0:Ljp/danball/eartheditor/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Ljp/danball/eartheditor/WebActivity$2;->this$0:Ljp/danball/eartheditor/WebActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljp/danball/eartheditor/WebActivity;->setResult(ILandroid/content/Intent;)V

    .line 156
    iget-object v1, p0, Ljp/danball/eartheditor/WebActivity$2;->this$0:Ljp/danball/eartheditor/WebActivity;

    invoke-virtual {v1}, Ljp/danball/eartheditor/WebActivity;->finish()V

    .line 157
    return-void
.end method
