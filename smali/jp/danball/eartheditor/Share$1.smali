.class final Ljp/danball/eartheditor/Share$1;
.super Ljava/lang/Object;
.source "Share.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/danball/eartheditor/Share;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/nio/ByteBuffer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$contentUri:Landroid/net/Uri;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/net/Uri;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Ljp/danball/eartheditor/Share$1;->val$contentUri:Landroid/net/Uri;

    iput-object p2, p0, Ljp/danball/eartheditor/Share$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Ljp/danball/eartheditor/Share$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 50
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 52
    iget-object v1, p0, Ljp/danball/eartheditor/Share$1;->val$contentUri:Landroid/net/Uri;

    iget-object v2, p0, Ljp/danball/eartheditor/Share$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Ljp/danball/eartheditor/Share$1;->val$contentUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Ljp/danball/eartheditor/Share$1;->val$contentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 54
    iget-object v1, p0, Ljp/danball/eartheditor/Share$1;->val$text:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Ljp/danball/eartheditor/Share$1;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    :cond_0
    iget-object v1, p0, Ljp/danball/eartheditor/Share$1;->val$activity:Landroid/app/Activity;

    const-string v2, "Choose an app"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 56
    return-void
.end method
