if [ ! -d "diagram_src" ]; then
  echo "diagram_src/ does not exist."
  exit 1
fi

mkdir -p diagram_dst
rm -r diagram_dst/*
cd diagram_src
for f in *
do
  mmdc \
    -i "$f" \
    -o "../diagram_dst/$f.pdf" \
    --pdfFit
done
