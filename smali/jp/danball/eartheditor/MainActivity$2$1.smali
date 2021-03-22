.class Ljp/danball/eartheditor/MainActivity$2$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/danball/eartheditor/MainActivity$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljp/danball/eartheditor/MainActivity$2;


# direct methods
.method constructor <init>(Ljp/danball/eartheditor/MainActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Ljp/danball/eartheditor/MainActivity$2;

    .prologue
    .line 374
    iput-object p1, p0, Ljp/danball/eartheditor/MainActivity$2$1;->this$1:Ljp/danball/eartheditor/MainActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity$2$1;->this$1:Ljp/danball/eartheditor/MainActivity$2;

    iget-object v0, v0, Ljp/danball/eartheditor/MainActivity$2;->this$0:Ljp/danball/eartheditor/MainActivity;

    invoke-static {v0}, Ljp/danball/eartheditor/MainActivity;->access$100(Ljp/danball/eartheditor/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity$2$1;->this$1:Ljp/danball/eartheditor/MainActivity$2;

    iget-object v1, v1, Ljp/danball/eartheditor/MainActivity$2;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 378
    return-void
.end method
