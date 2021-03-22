.class Ljp/danball/eartheditor/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/danball/eartheditor/MainActivity;->ad_update(ZIZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/danball/eartheditor/MainActivity;

.field final synthetic val$banner_pos:I

.field final synthetic val$banner_show:Z

.field final synthetic val$inter_show:I

.field final synthetic val$rect_pos:I

.field final synthetic val$rect_show:Z


# direct methods
.method constructor <init>(Ljp/danball/eartheditor/MainActivity;ZIZII)V
    .locals 0
    .param p1, "this$0"    # Ljp/danball/eartheditor/MainActivity;

    .prologue
    .line 695
    iput-object p1, p0, Ljp/danball/eartheditor/MainActivity$5;->this$0:Ljp/danball/eartheditor/MainActivity;

    iput-boolean p2, p0, Ljp/danball/eartheditor/MainActivity$5;->val$banner_show:Z

    iput p3, p0, Ljp/danball/eartheditor/MainActivity$5;->val$banner_pos:I

    iput-boolean p4, p0, Ljp/danball/eartheditor/MainActivity$5;->val$rect_show:Z

    iput p5, p0, Ljp/danball/eartheditor/MainActivity$5;->val$rect_pos:I

    iput p6, p0, Ljp/danball/eartheditor/MainActivity$5;->val$inter_show:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 697
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity$5;->this$0:Ljp/danball/eartheditor/MainActivity;

    invoke-static {v0}, Ljp/danball/eartheditor/MainActivity;->access$700(Ljp/danball/eartheditor/MainActivity;)Ljp/danball/eartheditor/AdManager;

    move-result-object v0

    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity$5;->this$0:Ljp/danball/eartheditor/MainActivity;

    invoke-static {v1}, Ljp/danball/eartheditor/MainActivity;->access$500(Ljp/danball/eartheditor/MainActivity;)Ljp/danball/eartheditor/AdBanner;

    move-result-object v1

    iget-object v2, p0, Ljp/danball/eartheditor/MainActivity$5;->this$0:Ljp/danball/eartheditor/MainActivity;

    invoke-static {v2}, Ljp/danball/eartheditor/MainActivity;->access$200(Ljp/danball/eartheditor/MainActivity;)Ljp/danball/eartheditor/AdBanner;

    move-result-object v2

    iget-object v3, p0, Ljp/danball/eartheditor/MainActivity$5;->this$0:Ljp/danball/eartheditor/MainActivity;

    invoke-static {v3}, Ljp/danball/eartheditor/MainActivity;->access$600(Ljp/danball/eartheditor/MainActivity;)Ljp/danball/eartheditor/AdInterstitial;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljp/danball/eartheditor/AdManager;->update_request(Ljp/danball/eartheditor/AdBanner;Ljp/danball/eartheditor/AdBanner;Ljp/danball/eartheditor/AdInterstitial;)V

    .line 698
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity$5;->this$0:Ljp/danball/eartheditor/MainActivity;

    invoke-static {v0}, Ljp/danball/eartheditor/MainActivity;->access$700(Ljp/danball/eartheditor/MainActivity;)Ljp/danball/eartheditor/AdManager;

    move-result-object v0

    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity$5;->this$0:Ljp/danball/eartheditor/MainActivity;

    invoke-static {v1}, Ljp/danball/eartheditor/MainActivity;->access$100(Ljp/danball/eartheditor/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Ljp/danball/eartheditor/MainActivity$5;->this$0:Ljp/danball/eartheditor/MainActivity;

    invoke-static {v2}, Ljp/danball/eartheditor/MainActivity;->access$500(Ljp/danball/eartheditor/MainActivity;)Ljp/danball/eartheditor/AdBanner;

    move-result-object v2

    iget-boolean v3, p0, Ljp/danball/eartheditor/MainActivity$5;->val$banner_show:Z

    iget v4, p0, Ljp/danball/eartheditor/MainActivity$5;->val$banner_pos:I

    iget-object v5, p0, Ljp/danball/eartheditor/MainActivity$5;->this$0:Ljp/danball/eartheditor/MainActivity;

    invoke-static {v5}, Ljp/danball/eartheditor/MainActivity;->access$200(Ljp/danball/eartheditor/MainActivity;)Ljp/danball/eartheditor/AdBanner;

    move-result-object v5

    iget-boolean v6, p0, Ljp/danball/eartheditor/MainActivity$5;->val$rect_show:Z

    iget v7, p0, Ljp/danball/eartheditor/MainActivity$5;->val$rect_pos:I

    invoke-virtual/range {v0 .. v7}, Ljp/danball/eartheditor/AdManager;->update_banner(Landroid/view/ViewGroup;Ljp/danball/eartheditor/AdBanner;ZILjp/danball/eartheditor/AdBanner;ZI)V

    .line 701
    iget v0, p0, Ljp/danball/eartheditor/MainActivity$5;->val$inter_show:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 702
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity$5;->this$0:Ljp/danball/eartheditor/MainActivity;

    invoke-static {v0}, Ljp/danball/eartheditor/MainActivity;->access$600(Ljp/danball/eartheditor/MainActivity;)Ljp/danball/eartheditor/AdInterstitial;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity$5;->this$0:Ljp/danball/eartheditor/MainActivity;

    invoke-static {v0}, Ljp/danball/eartheditor/MainActivity;->access$600(Ljp/danball/eartheditor/MainActivity;)Ljp/danball/eartheditor/AdInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Ljp/danball/eartheditor/AdInterstitial;->show()V

    .line 704
    :cond_0
    return-void
.end method
