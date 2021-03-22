.class Ljp/danball/eartheditor/AdBanner$2;
.super Ljava/lang/Object;
.source "AdBanner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/danball/eartheditor/AdBanner;->getDummyView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/danball/eartheditor/AdBanner;


# direct methods
.method constructor <init>(Ljp/danball/eartheditor/AdBanner;)V
    .locals 0
    .param p1, "this$0"    # Ljp/danball/eartheditor/AdBanner;

    .prologue
    .line 277
    iput-object p1, p0, Ljp/danball/eartheditor/AdBanner$2;->this$0:Ljp/danball/eartheditor/AdBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 280
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Ljp/danball/eartheditor/AdBanner$2;->this$0:Ljp/danball/eartheditor/AdBanner;

    iget-object v2, v2, Ljp/danball/eartheditor/AdBanner;->dummy_link:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 281
    .local v0, "bi":Landroid/content/Intent;
    iget-object v1, p0, Ljp/danball/eartheditor/AdBanner$2;->this$0:Ljp/danball/eartheditor/AdBanner;

    invoke-static {v1}, Ljp/danball/eartheditor/AdBanner;->access$100(Ljp/danball/eartheditor/AdBanner;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 282
    return-void
.end method
