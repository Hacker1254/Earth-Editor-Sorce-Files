.class Ljp/danball/eartheditor/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/danball/eartheditor/MainActivity;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/danball/eartheditor/MainActivity;


# direct methods
.method constructor <init>(Ljp/danball/eartheditor/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Ljp/danball/eartheditor/MainActivity;

    .prologue
    .line 499
    iput-object p1, p0, Ljp/danball/eartheditor/MainActivity$3;->this$0:Ljp/danball/eartheditor/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 501
    new-instance v0, Ljp/danball/eartheditor/ExitDialog;

    invoke-direct {v0}, Ljp/danball/eartheditor/ExitDialog;-><init>()V

    .line 502
    .local v0, "dialog":Ljp/danball/eartheditor/ExitDialog;
    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity$3;->this$0:Ljp/danball/eartheditor/MainActivity;

    invoke-static {v1}, Ljp/danball/eartheditor/MainActivity;->access$200(Ljp/danball/eartheditor/MainActivity;)Ljp/danball/eartheditor/AdBanner;

    move-result-object v1

    iput-object v1, v0, Ljp/danball/eartheditor/ExitDialog;->ad_rect:Ljp/danball/eartheditor/AdBanner;

    .line 503
    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity$3;->this$0:Ljp/danball/eartheditor/MainActivity;

    invoke-static {v1}, Ljp/danball/eartheditor/MainActivity;->access$300(Ljp/danball/eartheditor/MainActivity;)Ljp/danball/eartheditor/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Ljp/danball/eartheditor/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "Quit"

    invoke-virtual {v0, v1, v2}, Ljp/danball/eartheditor/ExitDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 504
    return-void
.end method
