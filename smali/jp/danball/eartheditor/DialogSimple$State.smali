.class public final enum Ljp/danball/eartheditor/DialogSimple$State;
.super Ljava/lang/Enum;
.source "DialogSimple.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/danball/eartheditor/DialogSimple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljp/danball/eartheditor/DialogSimple$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljp/danball/eartheditor/DialogSimple$State;

.field public static final enum Cancel:Ljp/danball/eartheditor/DialogSimple$State;

.field public static final enum None:Ljp/danball/eartheditor/DialogSimple$State;

.field public static final enum Ok:Ljp/danball/eartheditor/DialogSimple$State;

.field public static final enum Show:Ljp/danball/eartheditor/DialogSimple$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    new-instance v0, Ljp/danball/eartheditor/DialogSimple$State;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Ljp/danball/eartheditor/DialogSimple$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/danball/eartheditor/DialogSimple$State;->None:Ljp/danball/eartheditor/DialogSimple$State;

    .line 85
    new-instance v0, Ljp/danball/eartheditor/DialogSimple$State;

    const-string v1, "Show"

    invoke-direct {v0, v1, v3}, Ljp/danball/eartheditor/DialogSimple$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/danball/eartheditor/DialogSimple$State;->Show:Ljp/danball/eartheditor/DialogSimple$State;

    .line 86
    new-instance v0, Ljp/danball/eartheditor/DialogSimple$State;

    const-string v1, "Ok"

    invoke-direct {v0, v1, v4}, Ljp/danball/eartheditor/DialogSimple$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/danball/eartheditor/DialogSimple$State;->Ok:Ljp/danball/eartheditor/DialogSimple$State;

    .line 87
    new-instance v0, Ljp/danball/eartheditor/DialogSimple$State;

    const-string v1, "Cancel"

    invoke-direct {v0, v1, v5}, Ljp/danball/eartheditor/DialogSimple$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/danball/eartheditor/DialogSimple$State;->Cancel:Ljp/danball/eartheditor/DialogSimple$State;

    .line 83
    const/4 v0, 0x4

    new-array v0, v0, [Ljp/danball/eartheditor/DialogSimple$State;

    sget-object v1, Ljp/danball/eartheditor/DialogSimple$State;->None:Ljp/danball/eartheditor/DialogSimple$State;

    aput-object v1, v0, v2

    sget-object v1, Ljp/danball/eartheditor/DialogSimple$State;->Show:Ljp/danball/eartheditor/DialogSimple$State;

    aput-object v1, v0, v3

    sget-object v1, Ljp/danball/eartheditor/DialogSimple$State;->Ok:Ljp/danball/eartheditor/DialogSimple$State;

    aput-object v1, v0, v4

    sget-object v1, Ljp/danball/eartheditor/DialogSimple$State;->Cancel:Ljp/danball/eartheditor/DialogSimple$State;

    aput-object v1, v0, v5

    sput-object v0, Ljp/danball/eartheditor/DialogSimple$State;->$VALUES:[Ljp/danball/eartheditor/DialogSimple$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljp/danball/eartheditor/DialogSimple$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    const-class v0, Ljp/danball/eartheditor/DialogSimple$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljp/danball/eartheditor/DialogSimple$State;

    return-object v0
.end method

.method public static values()[Ljp/danball/eartheditor/DialogSimple$State;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Ljp/danball/eartheditor/DialogSimple$State;->$VALUES:[Ljp/danball/eartheditor/DialogSimple$State;

    invoke-virtual {v0}, [Ljp/danball/eartheditor/DialogSimple$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljp/danball/eartheditor/DialogSimple$State;

    return-object v0
.end method
