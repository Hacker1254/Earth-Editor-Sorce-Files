.class public Lcom/google/android/gms/ads/internal/overlay/zzd;
.super Lcom/google/android/gms/ads/internal/overlay/zzj;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# static fields
.field private static final zzMK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzML:Lcom/google/android/gms/ads/internal/overlay/zzz;

.field private final zzMM:Z

.field private zzMN:I

.field private zzMO:I

.field private zzMP:Landroid/media/MediaPlayer;

.field private zzMQ:Landroid/net/Uri;

.field private zzMR:I

.field private zzMS:I

.field private zzMT:I

.field private zzMU:I

.field private zzMV:I

.field private zzMW:Lcom/google/android/gms/ads/internal/overlay/zzy;

.field private zzMX:Z

.field private zzMY:I

.field private zzMZ:Lcom/google/android/gms/ads/internal/overlay/zzi;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMK:Ljava/util/Map;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMK:Ljava/util/Map;

    const/16 v1, -0x3ec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_IO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMK:Ljava/util/Map;

    const/16 v1, -0x3ef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_MALFORMED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMK:Ljava/util/Map;

    const/16 v1, -0x3f2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_UNSUPPORTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMK:Ljava/util/Map;

    const/16 v1, -0x6e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_TIMED_OUT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMK:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_VIDEO_RENDERING_START"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMK:Ljava/util/Map;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_SERVER_DIED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMK:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_UNKNOWN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMK:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_UNKNOWN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMK:Ljava/util/Map;

    const/16 v1, 0x2bc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_VIDEO_TRACK_LAGGING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMK:Ljava/util/Map;

    const/16 v1, 0x2bd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_BUFFERING_START"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMK:Ljava/util/Map;

    const/16 v1, 0x2be

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_BUFFERING_END"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMK:Ljava/util/Map;

    const/16 v1, 0x320

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_BAD_INTERLEAVING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMK:Ljava/util/Map;

    const/16 v1, 0x321

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_NOT_SEEKABLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMK:Ljava/util/Map;

    const/16 v1, 0x322

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_METADATA_UPDATE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMK:Ljava/util/Map;

    const/16 v1, 0x385

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_UNSUPPORTED_SUBTITLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMK:Ljava/util/Map;

    const/16 v1, 0x386

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_SUBTITLE_TIMED_OUT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZLcom/google/android/gms/ads/internal/overlay/zzz;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzj;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMN:I

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMO:I

    invoke-virtual {p0, p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzML:Lcom/google/android/gms/ads/internal/overlay/zzz;

    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMX:Z

    iput-boolean p3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMM:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzML:Lcom/google/android/gms/ads/internal/overlay/zzz;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/overlay/zzz;->zza(Lcom/google/android/gms/ads/internal/overlay/zzj;)V

    return-void
.end method

.method private zzK(I)V
    .locals 2

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzML:Lcom/google/android/gms/ads/internal/overlay/zzz;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzix()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzNS:Lcom/google/android/gms/ads/internal/overlay/zzab;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzab;->zzix()V

    :cond_0
    :goto_0
    iput p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMN:I

    return-void

    :cond_1
    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMN:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzML:Lcom/google/android/gms/ads/internal/overlay/zzz;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzz;->zziy()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzNS:Lcom/google/android/gms/ads/internal/overlay/zzab;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzab;->zziy()V

    goto :goto_0
.end method

.method private zzL(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMO:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/overlay/zzd;)Lcom/google/android/gms/ads/internal/overlay/zzi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMZ:Lcom/google/android/gms/ads/internal/overlay/zzi;

    return-object v0
.end method

.method private zza(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "AdMediaPlayerView setMediaPlayerVolume() called before onPrepared()."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private zzhA()V
    .locals 8

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMM:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzhB()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMO:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, "AdMediaPlayerView nudging MediaPlayer"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zza(F)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcS()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzhB()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    if-ne v1, v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcS()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0xfa

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzhC()V

    goto :goto_0
.end method

.method private zzhB()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMN:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMN:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMN:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zzhz()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "AdMediaPlayerView init MediaPlayer"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMQ:Landroid/net/Uri;

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v4}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzy(Z)V

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdd()Lcom/google/android/gms/ads/internal/overlay/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzr;->zzik()Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMT:I

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMX:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzy;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMW:Lcom/google/android/gms/ads/internal/overlay/zzy;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMW:Lcom/google/android/gms/ads/internal/overlay/zzy;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/overlay/zzy;->zza(Landroid/graphics/SurfaceTexture;II)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMW:Lcom/google/android/gms/ads/internal/overlay/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzy;->start()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMW:Lcom/google/android/gms/ads/internal/overlay/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzim()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMQ:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzde()Lcom/google/android/gms/ads/internal/overlay/zzs;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzs;->zza(Landroid/graphics/SurfaceTexture;)Landroid/view/Surface;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzK(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMQ:Landroid/net/Uri;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to initialize MediaPlayer at "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0, v5, v4}, Lcom/google/android/gms/ads/internal/overlay/zzd;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMW:Lcom/google/android/gms/ads/internal/overlay/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzil()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMW:Lcom/google/android/gms/ads/internal/overlay/zzy;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method private zzy(Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "AdMediaPlayerView release"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMW:Lcom/google/android/gms/ads/internal/overlay/zzy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMW:Lcom/google/android/gms/ads/internal/overlay/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzil()V

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMW:Lcom/google/android/gms/ads/internal/overlay/zzy;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzK(I)V

    if-eqz p1, :cond_1

    iput v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMO:I

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzL(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzhB()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzhB()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getVideoHeight()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoWidth()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMT:I

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    const/4 v1, 0x5

    const-string v0, "AdMediaPlayerView completion"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzK(I)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzL(I)V

    sget-object v0, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzd$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzd$2;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5

    const/4 v4, -0x1

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMK:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMK:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x26

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "AdMediaPlayerView MediaPlayer error: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzK(I)V

    invoke-direct {p0, v4}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzL(I)V

    sget-object v2, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/zzd$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd$3;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzd;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 4

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMK:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMK:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x25

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "AdMediaPlayerView MediaPlayer info: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onMeasure(II)V
    .locals 7

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v6, -0x80000000

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMR:I

    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->getDefaultSize(II)I

    move-result v1

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMS:I

    invoke-static {v0, p2}, Lcom/google/android/gms/ads/internal/overlay/zzd;->getDefaultSize(II)I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMR:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMS:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMW:Lcom/google/android/gms/ads/internal/overlay/zzy;

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-ne v4, v3, :cond_7

    if-ne v5, v3, :cond_7

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMR:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMS:I

    mul-int/2addr v3, v2

    if-ge v1, v3, :cond_6

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMR:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMS:I

    div-int/2addr v1, v2

    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->setMeasuredDimension(II)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMW:Lcom/google/android/gms/ads/internal/overlay/zzy;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMW:Lcom/google/android/gms/ads/internal/overlay/zzy;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzj(II)V

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMU:I

    if-lez v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMU:I

    if-ne v2, v1, :cond_3

    :cond_2
    iget v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMV:I

    if-lez v2, :cond_4

    iget v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMV:I

    if-eq v2, v0, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzhA()V

    :cond_4
    iput v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMU:I

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMV:I

    :cond_5
    return-void

    :cond_6
    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMR:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMS:I

    mul-int/2addr v3, v2

    if-le v1, v3, :cond_c

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMS:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMR:I

    div-int/2addr v0, v1

    move v1, v2

    goto :goto_0

    :cond_7
    if-ne v4, v3, :cond_8

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMS:I

    mul-int/2addr v1, v2

    iget v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMR:I

    div-int/2addr v1, v3

    if-ne v5, v6, :cond_b

    if-le v1, v0, :cond_b

    move v1, v2

    goto :goto_0

    :cond_8
    if-ne v5, v3, :cond_9

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMR:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMS:I

    div-int/2addr v1, v3

    if-ne v4, v6, :cond_0

    if-le v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_9
    iget v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMR:I

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMS:I

    if-ne v5, v6, :cond_a

    if-le v1, v0, :cond_a

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMR:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMS:I

    div-int/2addr v1, v3

    :goto_1
    if-ne v4, v6, :cond_0

    if-le v1, v2, :cond_0

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMS:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMR:I

    div-int/2addr v0, v1

    move v1, v2

    goto :goto_0

    :cond_a
    move v0, v1

    move v1, v3

    goto :goto_1

    :cond_b
    move v0, v1

    move v1, v2

    goto :goto_0

    :cond_c
    move v1, v2

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    const-string v0, "AdMediaPlayerView prepared"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzK(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzML:Lcom/google/android/gms/ads/internal/overlay/zzz;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzhU()V

    sget-object v0, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzd$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzd$1;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMR:I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMS:I

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMY:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMY:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->seekTo(I)V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzhA()V

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMR:I

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMS:I

    const/16 v2, 0x3e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "AdMediaPlayerView stream dimensions: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " x "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbg(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMO:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->play()V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzhC()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    const-string v0, "AdMediaPlayerView surface created"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzhz()V

    sget-object v0, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzd$4;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzd$4;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    const/4 v2, 0x1

    const-string v0, "AdMediaPlayerView surface destroyed"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMY:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMY:I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMW:Lcom/google/android/gms/ads/internal/overlay/zzy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMW:Lcom/google/android/gms/ads/internal/overlay/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzil()V

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzd$6;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzd$6;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzy(Z)V

    return v2
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "AdMediaPlayerView surface changed"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMO:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMR:I

    if-ne v3, p2, :cond_4

    iget v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMS:I

    if-ne v3, p3, :cond_4

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMY:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMY:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->seekTo(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->play()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMW:Lcom/google/android/gms/ads/internal/overlay/zzy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMW:Lcom/google/android/gms/ads/internal/overlay/zzy;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzj(II)V

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzd$5;

    invoke-direct {v1, p0, p2, p3}, Lcom/google/android/gms/ads/internal/overlay/zzd$5;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzd;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzML:Lcom/google/android/gms/ads/internal/overlay/zzz;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzb(Lcom/google/android/gms/ads/internal/overlay/zzj;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzNR:Lcom/google/android/gms/ads/internal/overlay/zzw;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMZ:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zzw;->zza(Landroid/graphics/SurfaceTexture;Lcom/google/android/gms/ads/internal/overlay/zzi;)V

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 2

    const/16 v0, 0x39

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "AdMediaPlayerView size changed: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMR:I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMS:I

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMR:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMS:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->requestLayout()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    const/4 v2, 0x4

    const-string v0, "AdMediaPlayerView pause"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzhB()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    invoke-direct {p0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzK(I)V

    sget-object v0, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzd$8;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzd$8;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-direct {p0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzL(I)V

    return-void
.end method

.method public play()V
    .locals 3

    const/4 v2, 0x3

    const-string v0, "AdMediaPlayerView play"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzhB()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    invoke-direct {p0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzK(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzNR:Lcom/google/android/gms/ads/internal/overlay/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzw;->zzhV()V

    sget-object v0, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzd$7;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzd$7;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-direct {p0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzL(I)V

    return-void
.end method

.method public seekTo(I)V
    .locals 2

    const/16 v0, 0x22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "AdMediaPlayerView seek "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzhB()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMY:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMY:I

    goto :goto_0
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzds;->zze(Landroid/net/Uri;)Lcom/google/android/gms/internal/zzds;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMQ:Landroid/net/Uri;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMY:I

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzhz()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->requestLayout()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->invalidate()V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/zzds;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "AdMediaPlayerView stop"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMP:Landroid/media/MediaPlayer;

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzK(I)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzL(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzML:Lcom/google/android/gms/ads/internal/overlay/zzz;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzz;->onStop()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(FF)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMW:Lcom/google/android/gms/ads/internal/overlay/zzy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMW:Lcom/google/android/gms/ads/internal/overlay/zzy;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzb(FF)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/overlay/zzi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMZ:Lcom/google/android/gms/ads/internal/overlay/zzi;

    return-void
.end method

.method public zzhC()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzNS:Lcom/google/android/gms/ads/internal/overlay/zzab;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzab;->zziA()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zza(F)V

    return-void
.end method

.method public zzhy()Ljava/lang/String;
    .locals 3

    const-string v1, "MediaPlayer"

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzMX:Z

    if-eqz v0, :cond_0

    const-string v0, " spherical"

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method
