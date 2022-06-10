export function _unsafeNew(url, options) {
  try {
    console.log(url);
    return new Request(url, options);
  } catch (e) {
    console.error(e);
    throw e;
  }
}
